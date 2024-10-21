import 'package:freezed_annotation/freezed_annotation.dart';

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
class VideoLessonEntity with _$VideoLessonEntity {
  const factory VideoLessonEntity({
    String? id,
    String? title,
    int? orderNumber,
    int? lessonTypeId,
    String? lessonType,
    double? watchedDuration,
    double? videoDuration,
    bool? locked,
    double? completionPercentage,
    String? videoThumbnailId,
    bool? isVideoClip,
    String? course,
    String? courseId,
    String? courseTopic,
    String? courseTopicId,
    String? lessonId,
    String? details,
    String? nextVideoLessonId,
    String? nextVideoLessonTitle,
    double? watchedPercent,
    bool? canRate,
    List<VideoFileEntity>? videoFiles,
    List<MaterialFileEntity>? materialFiles,
  }) = _VideoLessonEntity;

  factory VideoLessonEntity.fromJson(Map<String, dynamic> json) => _$VideoLessonEntityFromJson(json);
}

@freezed
class LessonTestEntity with _$LessonTestEntity {
  const factory LessonTestEntity({
    String? id,
    String? title,
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
  }) = _LessonTestEntity;

  factory LessonTestEntity.fromJson(Map<String, dynamic> json) => _$LessonTestEntityFromJson(json);
}



@freezed
class VideoFileEntity with _$VideoFileEntity {
  const factory VideoFileEntity({
    String? id,
    String? fileName,
  }) = _VideoFileEntity;

  factory VideoFileEntity.fromJson(Map<String, dynamic> json) => _$VideoFileEntityFromJson(json);
}


@freezed
class MaterialFileEntity with _$MaterialFileEntity {
  const factory MaterialFileEntity({
    String? id,
    String? fileName,
    int? fileSize,
    String? fileExtension,
    bool? canDownload,
  }) = _MaterialFileEntity;

  factory MaterialFileEntity.fromJson(Map<String, dynamic> json) => _$MaterialFileEntityFromJson(json);
}