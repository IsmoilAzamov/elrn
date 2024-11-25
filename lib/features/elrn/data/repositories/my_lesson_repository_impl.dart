
import 'package:elrn/features/elrn/data/datasources/remote/my_lesson_api_service.dart';
import 'package:elrn/features/elrn/domain/entities/certificate/certificate_entity.dart';
import 'package:elrn/features/elrn/domain/entities/my_lesson/my_lesson_entity.dart';
import 'package:elrn/features/elrn/domain/entities/test/test_entity.dart';
import 'package:elrn/features/elrn/domain/entities/test_result/test_result_entity.dart';

import '../../domain/repositories/my_lesson_repository.dart';
import '../index.dart';

class MyLessonRepositoryImpl extends MyLessonRepository {
  final MyLessonApiService _myProgramApiService;
  MyLessonRepositoryImpl(this._myProgramApiService);

  @override
  Future<DataState<MyLessonEntity>> getByCourseId({required String courseId})=> getCheckedResponse(() => _myProgramApiService.getByCourse( courseId));

  @override
  Future<DataState<MyLessonTopicEntity>> getByCourseTopicParent({required String parentId})=> getCheckedResponse(() => _myProgramApiService.getByCourseTopicParent( parentId));

  @override
  Future<DataState<MyLessonTopicChildEntity>> getContentByCourseTopic({required String topicId}) => getCheckedResponse(() => _myProgramApiService.getContentByCourseTopic( topicId));

  @override
  Future<DataState<VideoLessonEntity>> getMyVideoLessons({required String lessonId}) => getCheckedResponse(() => _myProgramApiService.getMyVideoLessons( lessonId));

  @override
  Future<DataState<LessonTestEntity>> getMyLessonsTest({required String testId}) => getCheckedResponse(() => _myProgramApiService.getMyLessonsTest( testId));

  @override
  Future<DataState<TestEntity>> startMyLessonTest({required String testId}) => getCheckedResponse(() => _myProgramApiService.startMyLessonTest( testId));

  @override
  Future<DataState<LessonTestEntity>> finishMyLessonTest({required List<AnswerResultEntity> answerResults}) => getCheckedResponse(() => _myProgramApiService.finishMyLessonTest( answerResults));

  @override
  Future<DataState<List<CertificateEntity>>> getMyCertificates({required String programId}) => getCheckedResponse(() => _myProgramApiService.getMyCertificates( programId));

  @override
  Future<DataState<List<TestResultEntity>>> getMyTestResults() => getCheckedResponse(() => _myProgramApiService.getMyTestResults());
}
