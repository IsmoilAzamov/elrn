


import 'package:elrn/core/resources/datastate.dart';

import '../entities/my_lesson/my_lesson_entity.dart';

abstract class MyLessonRepository {
  Future<DataState<MyLessonEntity>> getByCourseId({required String courseId});

Future<DataState<MyLessonTopicEntity>>  getByCourseTopicParent({required String parentId});

Future<DataState<MyLessonTopicChildEntity>>  getContentByCourseTopic({required String topicId});

  Future<DataState<VideoLessonEntity>> getMyVideoLessons({required String lessonId});

Future<DataState<LessonTestEntity>>  getMyLessonsTest({required String testId});
}