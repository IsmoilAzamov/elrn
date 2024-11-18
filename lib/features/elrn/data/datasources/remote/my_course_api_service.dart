import 'package:retrofit/retrofit.dart';

import '../../../domain/entities/reference/reference_entity.dart';
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

  @POST('/api/MyCourse/GetMyReferences')
  Future<HttpResponse<List<ReferenceEntity>>> getMyReferences({@Body() required Map<String, dynamic> dto});
}
