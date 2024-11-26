import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/presentation/bloc/modules/topics/topic_children/topic_contents/topic_contents_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../core/widgets/loading_indicator.dart';
import '../../../../../../../../di.dart';
import '../../bloc/modules/topics/topic_children/topic_contents/topic_contents_event.dart';
import '../../bloc/modules/topics/topic_children/topic_contents/topic_contents_state.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/error_widget.dart';
import '../../widgets/my_scaffold.dart';
import '../../widgets/no_item_widget.dart';
import '../courses/modules/topics/course_topic_contents/course_topic_contents_page.dart';

class SavedLessonsPage extends StatefulWidget {


  const SavedLessonsPage({super.key});

  @override
  State<SavedLessonsPage> createState() => _SavedLessonsPageState();
}

class _SavedLessonsPageState extends State<SavedLessonsPage> {
  final _bloc = sl<TopicContentsBloc>();

  @override
  void initState() {
    _bloc.add(SavedLessonsLoadEvent());
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
            title: "saved_lessons".tr(),
            onBackPressed: () {
              Navigator.pop(context);
            },
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                print("refresh");
                _bloc.add(SavedLessonsLoadEvent());
                return Future.value();
              },
              child: SingleChildScrollView(
                child: BlocProvider(
                    create: (context) => _bloc,
                    child: BlocBuilder<TopicContentsBloc, TopicContentsState>(builder: (context, state) {
                      if (state is TopicContentsLoadingState) {
                        return Center(child: loadingIndicator());
                      }
                      if (state is TopicContentsErrorState) {
                        return errorWidget(
                          onPressed: () {
                            _bloc.add(SavedLessonsLoadEvent());
                          },
                          text: state.message,
                        );
                      }
                      if (state is SavedVideosLoadedState) {
                        return _loadedUI(state.videoLessons);
                      }
                      return errorWidget(onPressed: () {
                        _bloc.add(SavedLessonsLoadEvent());
                      }, text: 'something_went_wrong'.tr());
                    })),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _loadedUI(List<dynamic> videoLessons) {
    print(videoLessons.length);
    if (videoLessons.isEmpty) {
      return SizedBox(
        height: MediaQuery.of(context).size.height*0.85,
        child: noItemWidget(
          onPressed: () {
            Navigator.pop(context);
          },
          text: "no_saved_lessons".tr(),
        ),
      );

    }
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (videoLessons.any((element) => element.isVideoClip == false))
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
              itemCount: videoLessons.length,
              itemBuilder: (context, index) {
                if (videoLessons[index].isVideoClip == false) {
                  return VideoCard(videoLesson: videoLessons[index]);
                } else {
                  return const SizedBox(
                    height: 0,
                  );
                }
              },
            ),
            if (videoLessons.any((element) => element.isVideoClip == true))
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
              itemCount: videoLessons.length,
              itemBuilder: (context, index) {
                if (videoLessons[index].isVideoClip == true) {
                  return VideoCard(videoLesson: videoLessons[index]);
                } else {
                  return const SizedBox(
                    height: 0,
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}


