import 'package:elrn/core/resources/datastate.dart';
import 'package:elrn/features/elrn/domain/entities/certificate/certificate_entity.dart';
import 'package:elrn/features/elrn/domain/entities/test/test_entity.dart';
import 'package:elrn/features/elrn/domain/entities/test_result/test_result_entity.dart';

import '../entities/my_lesson/my_lesson_entity.dart';

abstract class MyLessonRepository {
  Future<DataState<MyLessonEntity>> getByCourseId({required String courseId});

  Future<DataState<MyLessonTopicEntity>> getByCourseTopicParent({required String parentId});

  Future<DataState<MyLessonTopicChildEntity>> getContentByCourseTopic({required String topicId});

  Future<DataState<VideoLessonEntity>> getMyVideoLessons({required String lessonId});

  Future<DataState<LessonTestEntity>> getMyLessonsTest({required String testId});

  Future<DataState<TestEntity>> startMyLessonTest({required String testId});

  Future<DataState<LessonTestEntity>> finishMyLessonTest({required List<AnswerResultEntity> answerResults});

  Future<DataState<List<CertificateEntity>>> getMyCertificates({required String programId});

  Future<DataState<List<TestResultEntity>>> getMyTestResults();

  Future<DataState> watchedSegments({required List<String> segments, required double currentTime, required String documentId, required String lessonId, required int lessonTypeId});
}
