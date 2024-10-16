


import 'package:elrn/features/elrn/data/index.dart';

import '../../domain/entities/program/program_entity.dart';
import '../../domain/repositories/my_program_repository.dart';
import '../datasources/remote/my_program_api_service.dart';



class MyProgramRepositoryImpl implements MyProgramRepository {
  final MyProgramApiService _myProgramApiService;

  MyProgramRepositoryImpl(this._myProgramApiService);

  @override
  Future<DataState<List<ProgramEntity>>> getPrograms() async {
    try {
      var response = await _myProgramApiService.getPrograms();
      print(response.data);
      if (response.response.statusCode == 200) {
        return DataSuccess(response.data);
      } else {
        DioException error = errorHandler(DioException(response: response.response, requestOptions: response.response.requestOptions, message: response.response.statusMessage));
        return DataError(error);
      }
    } on DioException catch (e) {
      DioException error = errorHandler(e);
      return DataError(error);
    }
  }

  @override
  Future<DataState<List<CourseEntity>>> getMyCourses({required String programId})async {

    try {
      var response = await _myProgramApiService.getMyCourses(programId);
      print(response.data);
      if (response.response.statusCode == 200) {
        return DataSuccess(response.data);
      } else {
        DioException error = errorHandler(DioException(response: response.response, requestOptions: response.response.requestOptions, message: response.response.statusMessage));
        return DataError(error);
      }
    } on DioException catch (e) {
      DioException error = errorHandler(e);
      return DataError(error);
    }
  }
}