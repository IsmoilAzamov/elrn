// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestEntityImpl _$$TestEntityImplFromJson(Map<String, dynamic> json) =>
    _$TestEntityImpl(
      courseId: json['courseId'] as String?,
      courseTopicId: json['courseTopicId'] as String?,
      id: json['id'] as String?,
      details: json['details'] as String?,
      title: json['title'] as String?,
      questionCount: (json['questionCount'] as num?)?.toInt(),
      totalDuration: (json['totalDuration'] as num?)?.toDouble(),
      attemptId: json['attemptId'] as String?,
      correctAnswersCount: (json['correctAnswersCount'] as num?)?.toInt(),
      testResult: json['testResult'] as String?,
      isCompleted: json['isCompleted'] as bool?,
      lessonTestThumbnailId: json['lessonTestThumbnailId'] as String?,
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => QuestionEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TestEntityImplToJson(_$TestEntityImpl instance) =>
    <String, dynamic>{
      'courseId': instance.courseId,
      'courseTopicId': instance.courseTopicId,
      'id': instance.id,
      'details': instance.details,
      'title': instance.title,
      'questionCount': instance.questionCount,
      'totalDuration': instance.totalDuration,
      'attemptId': instance.attemptId,
      'correctAnswersCount': instance.correctAnswersCount,
      'testResult': instance.testResult,
      'isCompleted': instance.isCompleted,
      'lessonTestThumbnailId': instance.lessonTestThumbnailId,
      'questions': instance.questions,
    };

_$QuestionEntityImpl _$$QuestionEntityImplFromJson(Map<String, dynamic> json) =>
    _$QuestionEntityImpl(
      id: json['id'] as String?,
      questionText: json['questionText'] as String?,
      questionDuration: (json['questionDuration'] as num?)?.toDouble(),
      lessonTestId: json['lessonTestId'] as String?,
      orderNumber: (json['orderNumber'] as num?)?.toInt(),
      answers: (json['answers'] as List<dynamic>?)
          ?.map((e) => AnswerEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuestionEntityImplToJson(
        _$QuestionEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'questionText': instance.questionText,
      'questionDuration': instance.questionDuration,
      'lessonTestId': instance.lessonTestId,
      'orderNumber': instance.orderNumber,
      'answers': instance.answers,
    };

_$AnswerEntityImpl _$$AnswerEntityImplFromJson(Map<String, dynamic> json) =>
    _$AnswerEntityImpl(
      id: json['id'] as String?,
      lessonTestQuestionId: json['lessonTestQuestionId'] as String?,
      answerText: json['answerText'] as String?,
    );

Map<String, dynamic> _$$AnswerEntityImplToJson(_$AnswerEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lessonTestQuestionId': instance.lessonTestQuestionId,
      'answerText': instance.answerText,
    };

_$AnswerResultEntityImpl _$$AnswerResultEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AnswerResultEntityImpl(
      questionId: json['questionId'] as String?,
      answerId: json['answerId'] as String?,
      duration: (json['duration'] as num?)?.toDouble(),
      ownerId: json['ownerId'] as String?,
      attemptId: json['attemptId'] as String?,
    );

Map<String, dynamic> _$$AnswerResultEntityImplToJson(
        _$AnswerResultEntityImpl instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'answerId': instance.answerId,
      'duration': instance.duration,
      'ownerId': instance.ownerId,
      'attemptId': instance.attemptId,
    };
