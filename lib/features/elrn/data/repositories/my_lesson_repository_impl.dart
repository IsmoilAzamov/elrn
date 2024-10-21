
import 'package:elrn/features/elrn/data/datasources/remote/my_lesson_api_service.dart';
import 'package:elrn/features/elrn/domain/entities/my_lesson/my_lesson_entity.dart';

import '../../domain/repositories/my_lesson_repository.dart';
import '../index.dart';

class MyLessonRepositoryImpl extends MyLessonRepository {
  final MyLessonApiService _myProgramApiService;
  MyLessonRepositoryImpl(this._myProgramApiService);

  @override
  Future<DataState<MyLessonEntity>> getByCourseId({required String courseId})async {

    try {
      var response = await _myProgramApiService.getByCourse( courseId);
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
  Future<DataState<MyLessonTopicEntity>> getByCourseTopicParent({required String parentId})async {

    try {
      var response = await _myProgramApiService.getByCourseTopicParent( parentId);
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
  Future<DataState<MyLessonTopicChildEntity>> getContentByCourseTopic({required String topicId}) async{

    try {
      var response = await _myProgramApiService.getContentByCourseTopic( topicId);
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
  Future<DataState<VideoLessonEntity>> getMyVideoLessons({required String lessonId}) async{

    try {
      var response = await _myProgramApiService.getMyVideoLessons( lessonId);
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