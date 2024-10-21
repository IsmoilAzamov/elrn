// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatingEntityImpl _$$RatingEntityImplFromJson(Map<String, dynamic> json) =>
    _$RatingEntityImpl(
      id: (json['id'] as num?)?.toInt(),
      ratingId: (json['ratingId'] as num?)?.toInt(),
      documentId: json['documentId'] as String?,
      lessonTypeId: (json['lessonTypeId'] as num?)?.toInt(),
      statusId: (json['statusId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RatingEntityImplToJson(_$RatingEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ratingId': instance.ratingId,
      'documentId': instance.documentId,
      'lessonTypeId': instance.lessonTypeId,
      'statusId': instance.statusId,
    };
