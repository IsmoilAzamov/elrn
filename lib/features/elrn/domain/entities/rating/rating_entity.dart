import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_entity.freezed.dart';

part 'rating_entity.g.dart';

@freezed
class RatingEntity with _$RatingEntity {
  const factory RatingEntity({
    int? id,
    int? ratingId,
    String? documentId,
    int? lessonTypeId,
    int? statusId,
  }) = _RatingEntity;

  factory RatingEntity.fromJson(Map<String, dynamic> json) => _$RatingEntityFromJson(json);
}
