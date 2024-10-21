import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/core/constants/urls.dart';
import 'package:elrn/core/widgets/loading_indicator.dart';
import 'package:elrn/features/elrn/domain/entities/my_lesson/my_lesson_entity.dart';
import 'package:elrn/features/elrn/presentation/bloc/video_lesson/video_lesson_bloc.dart';
import 'package:elrn/features/elrn/presentation/widgets/app_bar.dart';
import 'package:elrn/features/elrn/presentation/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chewie/chewie.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../di.dart';
import '../../../bloc/video_lesson/video_lesson_event.dart';
import '../../../bloc/video_lesson/video_lesson_state.dart';
import '../../../widgets/error_widget.dart';
import '../../../widgets/rating_widget.dart';

class VideoLessonPage extends StatefulWidget {
  final String lessonId;
  final String title;
  final int lessonTypeId;

  const VideoLessonPage({super.key, required this.lessonId, required this.title, required this.lessonTypeId});

  @override
  State<VideoLessonPage> createState() => _VideoLessonPageState();
}

class _VideoLessonPageState extends State<VideoLessonPage> {
  final _bloc = sl<VideoLessonBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(VideoLessonLoadEvent(lessonId: widget.lessonId));
  }

  @override
  void dispose() {
    // _videoPlayerController.dispose();
    // _chewieController?.dispose();
    _bloc.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
        body: BlocProvider(
      create: (context) => _bloc,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CurvedAppBar(title: "video".tr()),
          BlocBuilder<VideoLessonBloc, VideoLessonState>(builder: (context, state) {
            if (state is VideoLessonLoadingState) {
              return Expanded(child: Center(child: loadingIndicator()));
            }
            if (state is VideoLessonErrorState) {
              return errorWidget(
                onPressed: () {
                  _bloc.add(VideoLessonLoadEvent(lessonId: widget.lessonId));
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
    ));
  }

  Widget loadedUI(VideoLessonLoadedState state) {
    return Expanded(
      child: SingleChildScrollView(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Text(
                widget.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ),
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
              padding: const EdgeInsets.all(16.0),
              child: customDivider(),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.all(16.0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "rating_lessonrating_lesson".tr(),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(width: 12),
                  RatingWidget( lessonId: widget.lessonId, canRate:state.videoLessonEntity.canRate ?? true, lessonTypeId: widget.lessonTypeId),
                ],
              ),
            ),
          ],
        ),
      ),
    );
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
              ),
              child: Text(
                "download".tr(),
                style: const TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
        const SizedBox(height: 12),
      ],
    ),
  );
}

Widget customDivider() {
  return Container(
    width: double.infinity,
    height: 2,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: AppColors.lightBlue,
    ),
  );
}
