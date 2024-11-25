import 'package:elrn/features/elrn/data/index.dart';
import 'package:elrn/features/elrn/domain/entities/reference/reference_entity.dart';

import '../../domain/repositories/my_course_repository.dart';
import '../datasources/remote/my_course_api_service.dart';

class MyCourseRepositoryImpl implements MyCourseRepository {
  final MyCourseApiService _myCourseApiService;

  MyCourseRepositoryImpl(this._myCourseApiService);

  @override
  Future<DataState<String>> start({required String courseId}) async {
    try {
      final response = await _myCourseApiService.start(courseId: courseId);
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

  Future<DataState<List<ReferenceEntity>>> getMyReferences({required String programId}) => getCheckedResponse(() => _myCourseApiService.getMyReferences(dto: {"programId": "aca1286c-c3de-4484-be77-aa2c54144e46"}));
}

