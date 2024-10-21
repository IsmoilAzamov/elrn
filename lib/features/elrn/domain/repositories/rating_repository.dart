

import 'package:elrn/features/elrn/domain/entities/rating/rating_entity.dart';

import '../../../../core/resources/datastate.dart';

abstract class RatingRepository {
  Future<DataState<RatingEntity>> getMyLessonRating ({required String lessonId});

 Future<DataState<int>> createLessonRating({required String documentId, required String lessonTypeId, required int ratingId});
}