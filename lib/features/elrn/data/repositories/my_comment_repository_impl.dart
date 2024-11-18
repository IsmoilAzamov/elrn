

import 'package:elrn/features/elrn/data/index.dart';

import 'package:elrn/features/elrn/domain/entities/comment/comment_entity.dart';

import '../../domain/repositories/my_comment_repository.dart';
import '../datasources/remote/my_comment_api_service.dart';

class MyCommentRepositoryImpl implements MyCommentRepository {
  final MyCommentApiService _myCommentApiService;

  MyCommentRepositoryImpl(this._myCommentApiService);

  @override
  Future<DataState<int>> create({required Map<String, dynamic> dto})async {
    try {
      final response = await _myCommentApiService.create(dto: dto);  print(response.data);
      if (response.response.statusCode == 200) {
        return DataSuccess(response.data["id"]);
      } else {
        DioException error = errorHandler(DioException(response: response.response, requestOptions: response.response.requestOptions, message: response.response.statusMessage));
        return DataError(error);
      }
    } on DioException catch (e) {
      print("---->$e");
      DioException error = errorHandler(e);
      return DataError(error);
    }
  }

  @override
  Future<DataState<List<CommentEntity>>> get({required Map<String, dynamic> dto})=>getCheckedResponse(() => _myCommentApiService.get(dto: dto));

}