
import 'package:elrn/features/elrn/domain/entities/comment/comment_entity.dart';
import 'package:retrofit/retrofit.dart';

import '../../index.dart';

part 'my_comment_api_service.g.dart';

@RestApi(baseUrl: DOMAIN)
abstract class MyCommentApiService {
  factory MyCommentApiService(Dio dio) {
    return _MyCommentApiService(dio);
  }

  @POST('/api/MyComment/GetComments')
  Future<HttpResponse<List<CommentEntity>>> get({@Body() required Map<String, dynamic> dto});

  @POST('/api/MyComment/CreateMyComment')
  Future<HttpResponse> create({@Body() required Map<String, dynamic> dto});

}
