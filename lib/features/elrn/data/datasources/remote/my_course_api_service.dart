import 'package:retrofit/retrofit.dart';

import '../../index.dart';

part 'my_course_api_service.g.dart';

@RestApi(baseUrl: DOMAIN)
abstract class MyCourseApiService {
  factory MyCourseApiService(Dio dio) {
    return _MyCourseApiService(dio);
  }

  @POST('/api/MyCourse/start/{courseId}')
  Future<HttpResponse> start({
    @Path('courseId') required String courseId,
  });
}
