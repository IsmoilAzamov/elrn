import 'package:elrn/features/elrn/data/index.dart';
import 'package:elrn/features/elrn/domain/entities/my_lesson/my_lesson_entity.dart';
import 'package:retrofit/retrofit.dart';

import '../../../domain/entities/certificate/certificate_entity.dart';
import '../../../domain/entities/test/test_entity.dart';

part 'my_lesson_api_service.g.dart';



@RestApi(baseUrl: DOMAIN)
abstract class MyLessonApiService {
  factory MyLessonApiService(Dio dio) {
    return _MyLessonApiService(dio);
  }

  @GET('/api/MyLesson/GetByCourse/{courseId}')
  Future<HttpResponse<MyLessonEntity>> getByCourse(@Path('courseId') String courseId);

  @GET('/api/MyLesson/GetByCourseTopicParent/{parentId}')
  Future<HttpResponse<MyLessonTopicEntity>> getByCourseTopicParent(@Path('parentId') String parentId);

  @GET('/api/MyLesson/GetContentByCourseTopic/{topicId}')
  Future<HttpResponse<MyLessonTopicChildEntity>> getContentByCourseTopic(@Path('topicId') String topicId);

  @GET('/api/MyLesson/GetMyVideoLessons/{lessonId}')
  Future<HttpResponse<VideoLessonEntity>> getMyVideoLessons(@Path('lessonId') String lessonId);

  @GET('/api/MyLesson/GetMyLessonsTest/{testId}')
  Future<HttpResponse<LessonTestEntity>> getMyLessonsTest(@Path('testId') String testId);

  @GET('/api/MyLesson/StartMyLessonTest/{testId}')
  Future<HttpResponse<TestEntity>> startMyLessonTest(@Path('testId') String testId);

  @POST('/api/MyLesson/FinishMyLessonTest/FinishTest')
  Future<HttpResponse<LessonTestEntity>> finishMyLessonTest(@Body() List<AnswerResultEntity> answerResults);

  @GET('/api/MyLesson/GetMyCertificates/{programId}')
  Future<HttpResponse<List<CertificateEntity>>> getMyCertificates(@Path('programId') String programId);
}
