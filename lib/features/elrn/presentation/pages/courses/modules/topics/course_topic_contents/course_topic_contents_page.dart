import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/core/constants/urls.dart';
import 'package:elrn/features/elrn/domain/entities/my_lesson/my_lesson_entity.dart';
import 'package:elrn/features/elrn/presentation/bloc/modules/topics/topic_children/topic_contents/topic_contents_bloc.dart';
import 'package:elrn/features/elrn/presentation/widgets/image_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../core/constants/app_colors.dart';
import '../../../../../../../../core/widgets/loading_indicator.dart';
import '../../../../../../../../di.dart';
import '../../../../../bloc/modules/topics/topic_children/topic_contents/topic_contents_event.dart';
import '../../../../../bloc/modules/topics/topic_children/topic_contents/topic_contents_state.dart';
import '../../../../../widgets/app_bar.dart';
import '../../../../../widgets/error_widget.dart';
import '../../../../../widgets/my_scaffold.dart';
import '../../../test/lesson_test_result_page.dart';
import '../../../test/start_lesson_test_page.dart';
import '../../../video_lesson/video_lesson_page.dart';

class CourseTopicContentsPage extends StatefulWidget {
  final String topicId;
  final String title;

  const CourseTopicContentsPage({super.key, required this.topicId, required this.title});

  @override
  State<CourseTopicContentsPage> createState() => _CourseTopicContentsPageState();
}

class _CourseTopicContentsPageState extends State<CourseTopicContentsPage> {
  final _bloc = sl<TopicContentsBloc>();

  @override
  void initState() {
    _bloc.add(TopicContentsLoadEvent(topicId: widget.topicId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CurvedAppBar(
            title: widget.title,
            onBackPressed: () {
              Navigator.pop(context);
            },
          ),
          Expanded(
            child: BlocProvider(
                create: (context) => _bloc,
                child: BlocBuilder<TopicContentsBloc, TopicContentsState>(builder: (context, state) {
                  if (state is TopicContentsLoadingState) {
                    return Center(child: loadingIndicator());
                  }
                  if (state is TopicContentsErrorState) {
                    return errorWidget(
                      onPressed: () {
                        _bloc.add(TopicContentsLoadEvent(topicId: widget.topicId));
                      },
                      text: state.message,
                    );
                  }
                  if (state is TopicContentsLoadedState) {
                    return _loadedUI(state.myLessonTopic);
                  }
                  return errorWidget(onPressed: () {}, text: 'something_went_wrong'.tr());
                })),
          ),
        ],
      ),
    );
  }

  Widget _loadedUI(MyLessonTopicChildEntity topicContent) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (topicContent.videoLessons?.any((element) => element.isVideoClip == false) ?? false)
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  "video_lecture".tr(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: topicContent.videoLessons?.length ?? 0,
              itemBuilder: (context, index) {
                if (topicContent.videoLessons?[index].isVideoClip == false) {
                  return VideoCard(videoLesson: topicContent.videoLessons![index]);
                } else {
                  return const SizedBox(
                    height: 0,
                  );
                }
              },
            ),
            if (topicContent.videoLessons?.any((element) => element.isVideoClip == true) ?? false)
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  "video_clips".tr(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: topicContent.videoLessons?.length ?? 0,
              itemBuilder: (context, index) {
                if (topicContent.videoLessons?[index].isVideoClip == true) {
                  return VideoCard(videoLesson: topicContent.videoLessons![index]);
                } else {
                  return const SizedBox(
                    height: 0,
                  );
                }
              },
            ),
            if (topicContent.lessonTests?.isNotEmpty ?? false)
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  "tests".tr(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            if (topicContent.lessonTests?.isNotEmpty ?? false)
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: topicContent.lessonTests?.length ?? 0,
                itemBuilder: (context, index) {
                  return TestCard(lessonTest: topicContent.lessonTests![index]);
                },
              ),
          ],
        ),
      ),
    );
  }
}

class VideoCard extends StatelessWidget {
  final VideoLessonEntity videoLesson;

  const VideoCard({super.key, required this.videoLesson});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if((videoLesson.locked ?? false)){
          return;
        }
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VideoLessonPage(videoLesson: videoLesson),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: AppColors.lightBlue),
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3), spreadRadius: 1.2, blurRadius: 3, offset: Offset(0, 4))],
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(14.0),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width * 9 / 16,
                      decoration: BoxDecoration(color: Theme.of(context).brightness == Brightness.light ? AppColors.lightBlue : AppColors.darkBlue),
                      child: Center(
                        child: Icon(
                          Icons.video_library_outlined,
                          color: AppColors.middleBlue,
                          size: 102,
                        ),
                      )),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(14.0),
                  child: ImageWidget(
                    url: "$LMS_DOMAIN/api/VideoLesson/DownloadFile/${videoLesson.videoThumbnailId}",
                    width: MediaQuery.of(context).size.width,

                    height: MediaQuery.of(context).size.width * 9 / 16,
                    errorWidget: Container(
                      width: double.infinity,
                      height: 200,
                      color: AppColors.lightBlue,
                      child: Center(
                        child: Icon(
                          Icons.image_outlined,
                          color: AppColors.middleBlue,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ),
                if (!(videoLesson.locked ?? false))
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(shape: BoxShape.circle, color: AppColors.bgDark.withOpacity(0.5), border: Border.all(color: AppColors.greenColor)),
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Text(
                    formatDuration(videoLesson.videoDuration ?? 0),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(1.5, 1.5),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Progress Bar
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0, right: 32.0),
                        child: Text(
                          "${videoLesson.title}",
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: Colors.black.withOpacity(0.5),
                                offset: Offset(1.5, 1.5),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (videoLesson.locked ?? false)
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.black.withOpacity(0.7),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Image.asset(
                              "assets/icons/lock.png",
                              width: 32,
                              height: 32,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          // if (!(videoLesson.locked ?? false))
          LinearProgressIndicator(
            value: (videoLesson.watchedDuration ?? 0) / (videoLesson.videoDuration ?? 1),
            backgroundColor: AppColors.middleBlue,
            borderRadius: BorderRadius.circular(10),
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.greenColor),
            minHeight: 5,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            "${videoLesson.title}",
            textAlign: TextAlign.start,
            maxLines: 3,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}

class TestCard extends StatelessWidget {
  final LessonTestEntity lessonTest;

  const TestCard({super.key, required this.lessonTest});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!(lessonTest.locked ?? false) && lessonTest.isCompleted == true) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LessonTestResultPage(testResult: lessonTest),
            ),
          );
        }
        if (!(lessonTest.locked ?? false) && lessonTest.isCompleted == false) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StartLessonTestPage(testId: lessonTest.id ?? ""),
            ),
          );
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: AppColors.lightBlue, width: 1),
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3), spreadRadius: 1.2, blurRadius: 3, offset: Offset(0, 4))],
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(14.0),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width * 9 / 16,
                      decoration: BoxDecoration(color: Theme.of(context).brightness == Brightness.light ? AppColors.lightBlue : AppColors.darkBlue),
                      child: Center(
                        child: Icon(
                          CupertinoIcons.text_badge_checkmark,
                          color: AppColors.middleBlue,
                          size: 102,
                        ),
                      )),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(14.0),
                  child: Image.network("$LMS_DOMAIN/api/LessonTest/DownloadFile/${lessonTest.lessonTestThumbnailId}",
                      width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.width * 9 / 16, fit: BoxFit.cover, errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: AppColors.lightBlue,
                      height: 200,
                      width: double.infinity,
                      child: const Icon(
                        Icons.image_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                    );
                  }),
                ),
                if (!(lessonTest.locked ?? false))
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(shape: BoxShape.circle, color: AppColors.bgDark.withOpacity(0.5), border: Border.all(color: AppColors.greenColor)),
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Progress Bar
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "${lessonTest.title}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: Colors.black.withOpacity(0.5),
                                offset: Offset(1.5, 1.5),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (lessonTest.locked ?? false)
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.black.withOpacity(0.5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Image.asset(
                              "assets/icons/lock.png",
                              width: 32,
                              height: 32,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Text(
            "${lessonTest.isCompleted == true ? "${lessonTest.correctAnswersCount} / ${lessonTest.questionCount} " : ""} ${lessonTest.title}",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}

// Calculate the duration in minutes:seconds format
String formatDuration(double seconds) {
  int minutes = (seconds / 60).floor();
  int remainingSeconds = (seconds % 60).floor();
  return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
}
