import 'package:freezed_annotation/freezed_annotation.dart';
part 'program_entity.freezed.dart';
part 'program_entity.g.dart';


@freezed
class ProgramEntity with _$ProgramEntity {
  factory ProgramEntity({
    String? id,
    String? title,
    double? price,
    String? description,
    String? docOn,
    String? docNumber,
    String? status,
    String? language,
    int? languageId,
    int? statusId,
    int? organizationId,
    String? organization,
    int? courseTopicChildCount,
    int? courseTopicCount,
    String? iconFileId,
    String? backgroundColorCode,
    int? courseCount,
    double? completionPercent,
    int? totalVideosCount,
    int? totalTestsCount,
    bool? canStart,
    int? totalCertificatesCount,
    List<CourseEntity>? courses,
    List<ProfessionEntity>? professions,
  }) = _ProgramEntity;

  factory ProgramEntity.fromJson(Map<String, dynamic> json) =>
      _$ProgramEntityFromJson(json);
}


@freezed
class CourseEntity with _$CourseEntity {
  factory CourseEntity({
    final String? id,
  final String? title,
  final String? details,
  final String? docOn,
  final String? releaseOn,
  final String? docNumber,
  final String? orderNumber,
  final int? courseDuration,
  final String? iconFileId,
  final int? courseTypeId,
  final String? courseType,
  final int? courseTopicCount,
  final bool? canStart,
  final double? completionPercent,
    final int? completedCourseTopicCount,
  final List<TopicEntity>? topics,
  }) = _CourseEntity;

  factory CourseEntity.fromJson(Map<String, dynamic> json) =>
      _$CourseEntityFromJson(json);
}

@freezed
class TopicEntity with _$TopicEntity {
  factory TopicEntity({
    final String? id,
  final String? title,
  final String? details,
  final String? docOn,
  final String? releaseOn,
  final String? docNumber,
  final String? orderNumber,
  }) = _TopicEntity;

  factory TopicEntity.fromJson(Map<String, dynamic> json) =>
      _$TopicEntityFromJson(json);
}



@freezed
class ProfessionEntity with _$ProfessionEntity {
  factory ProfessionEntity({
    final String? id,
    final String? title,
    final String? details,
    final String? docOn,
 final String? docNumber,
  }) = _ProfessionEntity;

  factory ProfessionEntity.fromJson(Map<String, dynamic> json) =>
      _$ProfessionEntityFromJson(json);
}