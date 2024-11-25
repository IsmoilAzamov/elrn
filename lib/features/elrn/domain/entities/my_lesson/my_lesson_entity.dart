import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'my_lesson_entity.freezed.dart';

part 'my_lesson_entity.g.dart';

@freezed
class MyLessonEntity with _$MyLessonEntity {
  const factory MyLessonEntity({
    String? courseTitle,
    String? iconFileId,
    List<MyLessonTopicEntity>? topics,
  }) = _MyLessonEntity;

  factory MyLessonEntity.fromJson(Map<String, dynamic> json) => _$MyLessonEntityFromJson(json);
}

@freezed
class MyLessonTopicEntity with _$MyLessonTopicEntity {
  const factory MyLessonTopicEntity({
    String? courseTopic,
    String? courseTopicId,
    List<MyLessonTopicChildEntity>? childTopics,
  }) = _MyLessonTopicEntity;

  factory MyLessonTopicEntity.fromJson(Map<String, dynamic> json) => _$MyLessonTopicEntityFromJson(json);
}

@freezed
class MyLessonTopicChildEntity with _$MyLessonTopicChildEntity {
  const factory MyLessonTopicChildEntity({
    String? courseTopic,
    String? courseTopicId,
    List<VideoLessonEntity>? videoLessons,
    List<LessonTestEntity>? lessonTests,
    List<String>? homeworks,
  }) = _MyLessonTopicChildEntity;

  factory MyLessonTopicChildEntity.fromJson(Map<String, dynamic> json) => _$MyLessonTopicChildEntityFromJson(json);
}

@freezed
@HiveType(typeId: 5) // Assign a unique type ID
class VideoLessonEntity with _$VideoLessonEntity {
  const factory VideoLessonEntity({
    @HiveField(0) String? id,
    @HiveField(1) String? title,
    @HiveField(2) int? orderNumber,
    @HiveField(3) int? lessonTypeId,
    @HiveField(4) String? lessonType,
    @HiveField(5) double? watchedDuration,
    @HiveField(6) double? videoDuration,
    @HiveField(7) bool? locked,
    @HiveField(8) double? completionPercentage,
    @HiveField(9) String? videoThumbnailId,
    @HiveField(10) bool? isVideoClip,
    @HiveField(11) String? course,
    @HiveField(12) String? courseId,
    @HiveField(13) String? courseTopic,
    @HiveField(14) String? courseTopicId,
    @HiveField(15) String? lessonId,
    @HiveField(16) String? details,
    @HiveField(17) String? nextVideoLessonId,
    @HiveField(18) String? nextVideoLessonTitle,
    @HiveField(19) double? watchedPercent,
    @HiveField(20) bool? canRate,
    @HiveField(21) List<VideoFileEntity>? videoFiles, // Custom adapter required
    @HiveField(22) List<MaterialFileEntity>? materialFiles, // Custom adapter required
  }) = _VideoLessonEntity;

  factory VideoLessonEntity.fromJson(Map<String, dynamic> json) => _$VideoLessonEntityFromJson(json);
}



@freezed
class LessonTestEntity with _$LessonTestEntity {
  const factory LessonTestEntity({
    String? courseId,
    String? courseTopicId,
    String? details,
    String? id,
    String? title,
    double? totalDuration,
    String? attemptId,
    int? orderNumber,
    bool? locked,
    int? questionCount,
    int? completedQuestionCount,
    double? completedPercent,
    int? lessonTypeId,
    String? lessonType,
    String? lessonTestThumbnailId,
    int? correctAnswersCount,
    double? testResult,
    bool? isCompleted,
    double? submissionLimit,
    double? testDuration,
    double? totalSpentDuration,
    int? totalQuestionCount,
    int? incorrectAnswersCount,
  }) = _LessonTestEntity;

  factory LessonTestEntity.fromJson(Map<String, dynamic> json) => _$LessonTestEntityFromJson(json);
}



@freezed
@HiveType(typeId: 6) // Assign a unique type ID for this entity
class VideoFileEntity with _$VideoFileEntity {
  const factory VideoFileEntity({
    @HiveField(0) String? id,
    @HiveField(1) String? fileName,
  }) = _VideoFileEntity;

  factory VideoFileEntity.fromJson(Map<String, dynamic> json) => _$VideoFileEntityFromJson(json);
}



@freezed
@HiveType(typeId: 7) // Assign a unique type ID for this entity
class MaterialFileEntity with _$MaterialFileEntity {
  const factory MaterialFileEntity({
    @HiveField(0) String? id,
    @HiveField(1) String? fileName,
    @HiveField(2) int? fileSize,
    @HiveField(3) String? fileExtension,
    @HiveField(4) bool? canDownload,
  }) = _MaterialFileEntity;

  factory MaterialFileEntity.fromJson(Map<String, dynamic> json) => _$MaterialFileEntityFromJson(json);
}