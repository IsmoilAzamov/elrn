// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_result_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestResultEntityImpl _$$TestResultEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TestResultEntityImpl(
      programTitle: json['programTitle'] as String?,
      orderNumber: (json['orderNumber'] as num?)?.toInt(),
      langId: (json['langId'] as num?)?.toInt(),
      courses: (json['courses'] as List<dynamic>?)
          ?.map(
              (e) => CourseTestResultEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TestResultEntityImplToJson(
        _$TestResultEntityImpl instance) =>
    <String, dynamic>{
      'programTitle': instance.programTitle,
      'orderNumber': instance.orderNumber,
      'langId': instance.langId,
      'courses': instance.courses,
    };

_$CourseTestResultEntityImpl _$$CourseTestResultEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseTestResultEntityImpl(
      courseTitle: json['courseTitle'] as String?,
      orderNumber: (json['orderNumber'] as num?)?.toInt(),
      courseTopics: (json['courseTopics'] as List<dynamic>?)
          ?.map((e) =>
              CourseTopicTestResultEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CourseTestResultEntityImplToJson(
        _$CourseTestResultEntityImpl instance) =>
    <String, dynamic>{
      'courseTitle': instance.courseTitle,
      'orderNumber': instance.orderNumber,
      'courseTopics': instance.courseTopics,
    };

_$CourseTopicTestResultEntityImpl _$$CourseTopicTestResultEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseTopicTestResultEntityImpl(
      courseTopicTitle: json['courseTopicTitle'] as String?,
      orderNumber: (json['orderNumber'] as num?)?.toInt(),
      lessonTestResults: (json['lessonTestResults'] as List<dynamic>?)
          ?.map(
              (e) => LessonTestResultEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CourseTopicTestResultEntityImplToJson(
        _$CourseTopicTestResultEntityImpl instance) =>
    <String, dynamic>{
      'courseTopicTitle': instance.courseTopicTitle,
      'orderNumber': instance.orderNumber,
      'lessonTestResults': instance.lessonTestResults,
    };

_$LessonTestResultEntityImpl _$$LessonTestResultEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LessonTestResultEntityImpl(
      lessonTitle: json['lessonTitle'] as String?,
      orderNumber: (json['orderNumber'] as num?)?.toInt(),
      questionsCount: (json['questionsCount'] as num?)?.toInt(),
      correctAnswersCount: (json['correctAnswersCount'] as num?)?.toInt(),
      attemptsCount: (json['attemptsCount'] as num?)?.toInt(),
      passResult: (json['passResult'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$LessonTestResultEntityImplToJson(
        _$LessonTestResultEntityImpl instance) =>
    <String, dynamic>{
      'lessonTitle': instance.lessonTitle,
      'orderNumber': instance.orderNumber,
      'questionsCount': instance.questionsCount,
      'correctAnswersCount': instance.correctAnswersCount,
      'attemptsCount': instance.attemptsCount,
      'passResult': instance.passResult,
    };
