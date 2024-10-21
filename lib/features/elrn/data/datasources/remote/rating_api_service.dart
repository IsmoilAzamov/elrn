import 'package:elrn/features/elrn/domain/entities/rating/rating_entity.dart';
import 'package:retrofit/retrofit.dart';

import '../../index.dart';

part 'rating_api_service.g.dart';

@RestApi(baseUrl: DOMAIN)
abstract class RatingApiService {
  factory RatingApiService(Dio dio) {
    return _RatingApiService(dio);
  }

  @GET('/api/MyLessonRating/GetMyLessonRating/{lessonId}')
  Future<HttpResponse<RatingEntity>> getMyLessonRating(@Path('lessonId') String lessonId);

  @POST('/api/MyLessonRating/CreateLessonRating')
  Future<HttpResponse> createLessonRating({@Body() required Map<String, dynamic> dto});

}
