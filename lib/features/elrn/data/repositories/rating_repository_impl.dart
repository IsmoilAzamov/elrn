import 'dart:core';

import 'package:elrn/features/elrn/data/datasources/remote/rating_api_service.dart';
import 'package:elrn/features/elrn/data/index.dart';

import 'package:elrn/features/elrn/domain/entities/rating/rating_entity.dart';

import '../../domain/repositories/rating_repository.dart';

class RatingRepositoryImpl implements RatingRepository {
  final RatingApiService _ratingApiService;

  RatingRepositoryImpl(this._ratingApiService);

  @override
  Future<DataState<RatingEntity>> getMyLessonRating({required String lessonId}) => getCheckedResponse(() => _ratingApiService.getMyLessonRating(lessonId));

  @override
  Future<DataState<int>> createLessonRating({required String documentId, required String lessonTypeId, required int ratingId}) async {
    Map<String, dynamic> dto = {"documentId": documentId, "lessonTypeId": lessonTypeId, "ratingId": ratingId};

    try {
      var response = await _ratingApiService.createLessonRating(dto: dto);
      print(response.data);
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
}
