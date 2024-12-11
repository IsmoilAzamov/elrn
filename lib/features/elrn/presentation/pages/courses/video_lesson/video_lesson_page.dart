import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/core/constants/urls.dart';
import 'package:elrn/core/widgets/loading_indicator.dart';
import 'package:elrn/features/elrn/domain/entities/my_lesson/my_lesson_entity.dart';
import 'package:elrn/features/elrn/domain/repositories/my_lesson_repository.dart';
import 'package:elrn/features/elrn/presentation/bloc/video_lesson/video_lesson_bloc.dart';
import 'package:elrn/features/elrn/presentation/widgets/app_bar.dart';
import 'package:elrn/features/elrn/presentation/widgets/my_scaffold.dart';
import 'package:elrn/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chewie/chewie.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../di.dart';
import '../../../../data/datasources/local/saved_lessons_db_service.dart';
import '../../../../data/datasources/local/segments_db_service.dart';
import '../../../bloc/video_lesson/video_lesson_event.dart';
import '../../../bloc/video_lesson/video_lesson_state.dart';
import '../../../widgets/comments_widget.dart';
import '../../../widgets/error_widget.dart';
import '../../../widgets/rating_widget.dart';

class VideoLessonPage extends StatefulWidget {
  final VideoLessonEntity videoLesson;

  const VideoLessonPage({super.key, required this.videoLesson});

  @override
  State<VideoLessonPage> createState() => _VideoLessonPageState();
}

class _VideoLessonPageState extends State<VideoLessonPage> {
  final _bloc = sl<VideoLessonBloc>();

  Timer? timer;
  VideoLessonEntity? lesson;

  void startWatchedPercentUpdates() {
    // Cancel any existing timer
    timer?.cancel();

    // Start a periodic timer
    timer = Timer.periodic(const Duration(seconds: 15), (_) {
      print("updateWatchedPercent");
      sendWatchedSegments();
      _bloc.add(VideoLessonRefreshEvent(lessonId: widget.videoLesson.id ?? ""));
    });
  }

  @override
  void initState() {
    WakelockPlus.enable();
    print(widget.videoLesson.toJson());
    super.initState();
    SegmentsDBService.clearSegments();
    _bloc.add(VideoLessonLoadEvent(lessonId: widget.videoLesson.id ?? ""));
    startWatchedPercentUpdates();
  }

  @override
  void dispose() {
    // Dispose the ChewieController manually when the widget is disposed
    chewieController?.dispose();
    WakelockPlus.disable();
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: PopScope(
          //if back button is pressed, show loading indicator
          canPop: false,
          onPopInvokedWithResult: (bool didPop, String? result) async {
            if (didPop) {
              return;
            }

            chewieController?.pause();
            sendWatchedSegments();
            Navigator.pop(context);
          },
          child: MyScaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CurvedAppBar(
                    title: "video".tr(),
                    onBackPressed: () {
                      chewieController?.pause();
                      sendWatchedSegments();
                      Navigator.pop(context);
                    }),
                BlocConsumer<VideoLessonBloc, VideoLessonState>(listener: (context, state) {
                  if (state is VideoLessonLoadedState) {
                    lesson = state.videoLessonEntity;
                  }
                }, builder: (context, state) {
                  if (state is VideoLessonLoadingState) {
                    return Expanded(child: Center(child: loadingIndicator()));
                  }
                  if (state is VideoLessonErrorState) {
                    return errorWidget(
                      onPressed: () {
                        _bloc.add(VideoLessonLoadEvent(lessonId: widget.videoLesson.id ?? ""));
                      },
                      text: state.message,
                    );
                  }
                  if (state is VideoLessonLoadedState) {
                    return loadedUI(state);
                  }
                  return errorWidget(onPressed: () {}, text: 'something_went_wrong'.tr());
                }),
              ],
            ),
          )),
    );
  }

  Widget loadedUI(VideoLessonLoadedState state) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: () async {
          _bloc.add(VideoLessonRefreshEvent(lessonId: widget.videoLesson.id ?? ""));
        },
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.videoLesson.title ?? "",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    //saved courses button
                    savedCoursesButton(videoLessonEntity: state.videoLessonEntity),
                  ],
                ),
              ),
              // const SizedBox(height: 12),
              Container(
                height: 200,
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(color: AppColors.lightBlue, width: 1), boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(2, 5),
                  ),
                ]),
                child: Card(
                  margin: EdgeInsets.zero,
                  elevation: 4,
                  shadowColor: Colors.black.withOpacity(0.5),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Chewie(
                      controller: state.chewieController,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                width: double.infinity,
                child: LinearProgressIndicator(
                  value: (state.videoLessonEntity.watchedPercent ?? 0) / 100,
                  backgroundColor: AppColors.middleBlue,
                  borderRadius: BorderRadius.circular(10),
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.greenColor),
                  minHeight: 5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
                child: Text(
                  "${"lesson_progress".tr()}: ${state.videoLessonEntity.watchedPercent?.toStringAsFixed(0)}%",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 12),
              for (MaterialFileEntity material in state.videoLessonEntity.materialFiles ?? []) materialWidget(material),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: customDivider(),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "rating_lesson".tr(),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(width: 8),
                    RatingWidget(lessonId: lesson?.id ?? "", canRate: state.videoLessonEntity.canRate ?? true, lessonTypeId: widget.videoLesson.lessonTypeId ?? 0),
                  ],
                ),
              ),
              CommentsWidget(documentId: state.videoLessonEntity.id ?? "", lessonTypeId: widget.videoLesson.lessonTypeId ?? 0),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }

  Widget savedCoursesButton({required VideoLessonEntity videoLessonEntity}) {
    final savedLessonsDBService = sl<SavedLessonsDBService>();
    List<dynamic> videoLessons = savedLessonsDBService.getSavedLessons();
    bool isSaved = videoLessons.any((videoLesson) => videoLesson.id == videoLessonEntity.id);
    return StatefulBuilder(builder: (context, updateState) {
      return IconButton(
        icon: Icon(isSaved ? CupertinoIcons.heart_fill : CupertinoIcons.heart),
        color: isSaved ? AppColors.redColor : null,
        onPressed: () {
          if (isSaved) {
            savedLessonsDBService.removeSavedLessonById(videoLessonEntity.id ?? "");
          } else {
            savedLessonsDBService.addSavedLesson(widget.videoLesson);
          }
          updateState(() {
            isSaved = !isSaved;
          });
        },
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashRadius: 20,
        padding: const EdgeInsets.all(0),
        constraints: const BoxConstraints(),
        alignment: Alignment.center,
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        focusNode: FocusNode(),
        autofocus: false,
        mouseCursor: SystemMouseCursors.click,
        enableFeedback: true,
      );
    });
  }

  void sendWatchedSegments() async {
    try {
      final myLessonRepository = sl<MyLessonRepository>();

      List<String> segments = await SegmentsDBService.getSegments();

      if (mounted) {
        await myLessonRepository.watchedSegments(
            segments: segments,
            currentTime: chewieController?.videoPlayerController.value.position.inSeconds.toDouble() ?? 0.0,
            documentId: lesson?.id ?? "",
            lessonId: lesson?.id ?? "",
            lessonTypeId: widget.videoLesson.lessonTypeId ?? 0);

        SegmentsDBService.clearSegments();
      }
    } catch (e) {
      print(e);
    }
  }
}

Widget materialWidget(MaterialFileEntity material) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Column(
      children: [
        customDivider(),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                material.fileName ?? "",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(width: 12),
            // if(material.canDownload == true)
            ElevatedButton(
              onPressed: () async {
                Uri uri = Uri.parse("$LMS_DOMAIN/api/MaterialFile/DownloadFile/${material.id}");
                if (await canLaunchUrl(uri)) {
                  launchUrl(uri);
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.blueColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                //reduce height
                minimumSize: const Size(100, 32),
              ),
              child: Text(
                "download".tr(),
                style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
        const SizedBox(height: 12),
      ],
    ),
  );
}

Widget customDivider({double? height}) {
  return Container(
    width: double.infinity,
    height: height ?? 2,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: AppColors.lightBlue,
    ),
  );
}
