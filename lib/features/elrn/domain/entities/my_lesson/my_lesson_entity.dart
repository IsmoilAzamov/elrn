import 'package:freezed_annotation/freezed_annotation.dart';
part 'my_lesson_entity.freezed.dart';
part 'my_lesson_entity.g.dart';



@freezed
class MyLessonEntity with _$MyLessonEntity {
  const factory MyLessonEntity({
    required String? courseTitle,
    required String? iconFileId,
    required List<MyLessonTopicEntity> topics,
  }) = _MyLessonEntity;

  factory MyLessonEntity.fromJson(Map<String, dynamic> json) =>
      _$MyLessonEntityFromJson(json);
}

@freezed
class MyLessonTopicEntity with _$MyLessonTopicEntity {
  const factory MyLessonTopicEntity({
    required String? courseTopic,
    required String? courseTopicId,
    required List<MyLessonTopicChildEntity>? childTopics,
  }) = _MyLessonTopicEntity;

  factory MyLessonTopicEntity.fromJson(Map<String, dynamic> json) =>
      _$MyLessonTopicEntityFromJson(json);
}



@freezed
class MyLessonTopicChildEntity with _$MyLessonTopicChildEntity {
  const factory MyLessonTopicChildEntity({
    required String? courseTopic,
    required String? courseTopicId,
 required List<VideoLessonEntity>? videoLessons,
 required List<LessonTestEntity>? lessonTests,
 required List<String>? homeworks,
  }) = _MyLessonTopicChildEntity;

  factory MyLessonTopicChildEntity.fromJson(Map<String, dynamic> json) =>
      _$MyLessonTopicChildEntityFromJson(json);
}



@freezed
class VideoLessonEntity with _$VideoLessonEntity {
  const factory VideoLessonEntity({
    required String? id,
    required String? title,
    required int? orderNumber,
    required int? lessonTypeId,
    required String? lessonType,
    required double? watchedDuration,
    required double? videoDuration,
    required bool? locked,
    required double? completionPercentage,
    required String? videoThumbnailId,
    required bool? isVideoClip,
  }) = _VideoLessonEntity;

  factory VideoLessonEntity.fromJson(Map<String, dynamic> json) =>
      _$VideoLessonEntityFromJson(json);
}



@freezed
class LessonTestEntity with _$LessonTestEntity {
  const factory LessonTestEntity({
    required String? id,
    required String? title,
    required int? orderNumber,
    required bool? locked,
    required int? questionCount,
    required int? completedQuestionCount,
    required double? completedPercent,
    required int? lessonTypeId,
    required String? lessonType,
    required String? lessonTestThumbnailId,
    required int? correctAnswersCount,
    required double? testResult,
    required bool? isCompleted,
    required double? submissionLimit,
  }) = _LessonTestEntity;

  factory LessonTestEntity.fromJson(Map<String, dynamic> json) =>
      _$LessonTestEntityFromJson(json);
}