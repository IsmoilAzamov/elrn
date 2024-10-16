import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/core/constants/app_colors.dart';
import 'package:elrn/features/elrn/domain/entities/my_lesson/my_lesson_entity.dart';
import 'package:elrn/features/elrn/presentation/bloc/modules/topics/topic_children/topic_children_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../../core/widgets/loading_indicator.dart';
import '../../../../../../../di.dart';
import '../../../../../../../main.dart';
import '../../../../bloc/modules/topics/topic_children/topic_children_event.dart';
import '../../../../bloc/modules/topics/topic_children/topic_children_state.dart';
import '../../../../bloc/modules/topics/topics_bloc.dart';
import '../../../../bloc/modules/topics/topics_event.dart';
import '../../../../bloc/modules/topics/topics_state.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/error_widget.dart';
import '../../../../widgets/my_scaffold.dart';
import 'course_topic_contents/course_topic_contents_page.dart';

class TopicsPage extends StatefulWidget {
  final String courseId;
  final String title;

  const TopicsPage({super.key, required this.courseId, required this.title});

  @override
  State<TopicsPage> createState() => _TopicsPageState();
}

class _TopicsPageState extends State<TopicsPage> {
  final _bloc = sl<TopicsBloc>();

  @override
  void initState() {
    _bloc.add(TopicsLoadEvent(programId: widget.courseId));
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
            actions: [
              IconButton(
                onPressed: () {
                  // _bloc.add(TopicsLoadEvent(programId: widget.programId));
                },
                icon: const Icon(Icons.more_vert_outlined),
              ),
            ],
          ),
          BlocProvider(
              create: (context) => _bloc,
              child: BlocBuilder<TopicsBloc, TopicsState>(builder: (context, state) {
                if (state is TopicsLoadingState) {
                  return Expanded(child: Center(child: loadingIndicator()));
                }
                if (state is TopicsErrorState) {
                  return errorWidget(
                    onPressed: () {
                      _bloc.add(TopicsLoadEvent(programId: widget.courseId));
                    },
                    text: state.message,
                  );
                }
                if (state is TopicsLoadedState) {
                  return _loadedUI(state.myLesson);
                }

                return errorWidget(onPressed: () {}, text: 'something_went_wrong'.tr());
              })),
        ],
      ),
    );
  }

  Widget _loadedUI(MyLessonEntity myLesson) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              Column(
                children: List.generate(
                  myLesson.topics.length,
                  (index) => GestureDetector(
                    onTap: () {
                      // if(myLesson.topics[index].canStart==false){
                      //   Navigator.push(context, MaterialPageRoute(builder: (context) =>  TopicsPage(programId: courses[index].id??"", title: courses[index].title??"",)));
                      // }
                    },
                    child: TopicItem(
                      item: myLesson.topics[index],
                    ),
                  ),
                ).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopicItem extends StatelessWidget {
  const TopicItem({super.key, required this.item});

  final MyLessonTopicEntity item;

  @override
  Widget build(BuildContext context) {
    bool isDark = box.get('theme') == "dark";
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: isDark ? AppColors.darkBlue : AppColors.blueColor,
        border: Border.all(color: AppColors.lightBlue),
      ),
      child: Stack(
        children: [
          ExpansionTile(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            // visualDensity: VisualDensity.compact,
            dense: true,

            iconColor: AppColors.greenColor,
            textColor: AppColors.greenColor,
            collapsedTextColor: Colors.white,
            collapsedIconColor: Colors.white,

            // tilePadding: const EdgeInsets.all(8),
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.lightBlue,
              child: Image.asset(
                'assets/icons/globe.png',
                width: 32,
                height: 32,
              ),
            ),
            title: Text(
              " ${item.courseTopic}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, fontFamily: GoogleFonts.poppins().fontFamily),
            ),
            children: [TopicChildren(topicId: item.courseTopicId??"")],
          ),
          if (item.childTopics?.isNotEmpty == true)
            Container(
              padding: const EdgeInsets.all(12),
              constraints: const BoxConstraints.expand(),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 4,
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 12, right: 12),
                      child: Image.asset(
                        'assets/icons/lock.png',
                        width: 32,
                      )),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class TopicChildren extends StatefulWidget {
  final String topicId;

  const TopicChildren({super.key, required this.topicId});

  @override
  State<TopicChildren> createState() => _TopicChildrenState();
}

class _TopicChildrenState extends State<TopicChildren> {
  final _bloc = sl<TopicChildrenBloc>();

  @override
  void initState() {
    _bloc.add(TopicChildrenLoadEvent(parentId: widget.topicId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => _bloc,
        child: BlocBuilder<TopicChildrenBloc, TopicChildrenState>(builder: (context, state) {
          if (state is TopicChildrenLoadingState) {
            return Center(child: loadingIndicator());
          }
          if (state is TopicChildrenErrorState) {
            return errorWidget(
              onPressed: () {
                _bloc.add(TopicChildrenLoadEvent(parentId: widget.topicId));
              },
              text: state.message,
            );
          }
          if (state is TopicChildrenLoadedState) {
            return _loadedUI(state.myLessonTopic);
          }
          return errorWidget(onPressed: () {}, text: 'something_went_wrong'.tr());
        }));
  }

  Widget _loadedUI(MyLessonTopicEntity myLessonTopic) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: myLessonTopic.childTopics?.length??0,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {

                Navigator.push(context, MaterialPageRoute(builder: (context) =>  CourseTopicContentsPage(topicId: myLessonTopic.childTopics?[index].courseTopicId??"", title: myLessonTopic.childTopics?[index].courseTopic??"",)));

            },


            child: Column(
              children: [
                Divider(height: 0, thickness: 1, color: AppColors.lightBlue, endIndent: 20, indent: 20),
                Container(
                    padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),

                    child: ListTile(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),

                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),

                      dense: true,

                      // leading: CircleAvatar(
                      //   radius: 30,
                      //   backgroundColor: AppColors.lightBlue,
                      // ),
                      title: Text(
                        " ${myLessonTopic.childTopics?[index].courseTopic??""}",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.white),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                      ),
                    )),
              ],
            )
            // visualDensity: VisualDensity.compact,
            );
      },
    );
  }
}
