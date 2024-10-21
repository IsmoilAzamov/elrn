import 'package:elrn/features/elrn/data/index.dart';
import 'package:elrn/features/elrn/domain/entities/my_lesson/my_lesson_entity.dart';
import 'package:retrofit/retrofit.dart';

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
}
