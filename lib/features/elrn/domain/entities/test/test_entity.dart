import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_entity.freezed.dart';

part 'test_entity.g.dart';

@freezed
class TestEntity with _$TestEntity {
  factory TestEntity({
    String? courseId,
    String? courseTopicId,
    String? id,
    String? details,
    String? title,
    int? questionCount,
    double? totalDuration,
    String? attemptId,
    int? correctAnswersCount,
    String? testResult,
    bool? isCompleted,
    String? lessonTestThumbnailId,
    List<QuestionEntity>? questions,
  }) = _TestEntity;

  factory TestEntity.fromJson(Map<String, dynamic> json) =>
      _$TestEntityFromJson(json);
}

@freezed
class QuestionEntity with _$QuestionEntity {
  factory QuestionEntity({
    String? id,
    String? questionText,
    double? questionDuration,
    String? lessonTestId,
    int? orderNumber,
    List<AnswerEntity>? answers,
  }) = _QuestionEntity;

  factory QuestionEntity.fromJson(Map<String, dynamic> json) =>
      _$QuestionEntityFromJson(json);
}

@freezed
class AnswerEntity with _$AnswerEntity {
  factory AnswerEntity({
    String? id,
    String? lessonTestQuestionId,
    String? answerText,
  }) = _AnswerEntity;

  factory AnswerEntity.fromJson(Map<String, dynamic> json) =>
      _$AnswerEntityFromJson(json);
}





@freezed
class AnswerResultEntity with _$AnswerResultEntity {
  factory AnswerResultEntity({
    String? questionId,
    String? answerId,
    double? duration,
    String? ownerId,
    String? attemptId,
  }) = _AnswerResultEntity;

  factory AnswerResultEntity.fromJson(Map<String, dynamic> json) =>
      _$AnswerResultEntityFromJson(json);
}