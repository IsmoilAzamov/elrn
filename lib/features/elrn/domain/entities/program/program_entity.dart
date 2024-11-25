import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'program_entity.freezed.dart';
part 'program_entity.g.dart';


@freezed
@HiveType(typeId: 1) // Assign a unique typeId
class ProgramEntity with _$ProgramEntity {
  factory ProgramEntity({
    @HiveField(0) String? id,
    @HiveField(1) String? title,
    @HiveField(2) double? price,
    @HiveField(3) String? description,
    @HiveField(4) String? docOn,
    @HiveField(5) String? docNumber,
    @HiveField(6) String? status,
    @HiveField(7) String? language,
    @HiveField(8) int? languageId,
    @HiveField(9) int? statusId,
    @HiveField(10) int? organizationId,
    @HiveField(11) String? organization,
    @HiveField(12) int? courseTopicChildCount,
    @HiveField(13) int? courseTopicCount,
    @HiveField(14) String? iconFileId,
    @HiveField(15) String? backgroundColorCode,
    @HiveField(16) int? courseCount,
    @HiveField(17) double? completionPercent,
    @HiveField(18) int? totalVideosCount,
    @HiveField(19) int? totalTestsCount,
    @HiveField(20) bool? canStart,
    @HiveField(21) int? totalCertificatesCount,
    @HiveField(22) List<CourseEntity>? courses,
    @HiveField(23) List<ProfessionEntity>? professions,
    @HiveField(24) String? programDuration,
  }) = _ProgramEntity;

  factory ProgramEntity.fromJson(Map<String, dynamic> json) =>
      _$ProgramEntityFromJson(json);

}

@freezed
@HiveType(typeId: 2) // Assign unique typeId
class CourseEntity with _$CourseEntity {
  factory CourseEntity({
    @HiveField(0) String? id,
    @HiveField(1) String? title,
    @HiveField(2) String? details,
    @HiveField(3) String? docOn,
    @HiveField(4) String? releaseOn,
    @HiveField(5) String? docNumber,
    @HiveField(6) String? orderNumber,
    @HiveField(7) int? courseDuration,
    @HiveField(8) String? iconFileId,
    @HiveField(9) int? courseTypeId,
    @HiveField(10) String? courseType,
    @HiveField(11) int? courseTopicCount,
    @HiveField(12) bool? canStart,
    @HiveField(13) double? completionPercent,
    @HiveField(14) int? completedCourseTopicCount,
    @HiveField(15) List<TopicEntity>? topics,
  }) = _CourseEntity;

  factory CourseEntity.fromJson(Map<String, dynamic> json) =>
      _$CourseEntityFromJson(json);
}

@freezed
@HiveType(typeId: 3) // Assign unique typeId
class TopicEntity with _$TopicEntity {
  factory TopicEntity({
    @HiveField(0) String? id,
    @HiveField(1) String? title,
    @HiveField(2) String? details,
    @HiveField(3) String? docOn,
    @HiveField(4) String? releaseOn,
    @HiveField(5) String? docNumber,
    @HiveField(6) String? orderNumber,
  }) = _TopicEntity;

  factory TopicEntity.fromJson(Map<String, dynamic> json) =>
      _$TopicEntityFromJson(json);
}

@freezed
@HiveType(typeId: 4) // Assign unique typeId
class ProfessionEntity with _$ProfessionEntity {
  factory ProfessionEntity({
    @HiveField(0) String? id,
    @HiveField(1) String? title,
    @HiveField(2) String? details,
    @HiveField(3) String? docOn,
    @HiveField(4) String? docNumber,
  }) = _ProfessionEntity;

  factory ProfessionEntity.fromJson(Map<String, dynamic> json) =>
      _$ProfessionEntityFromJson(json);
}