

import 'package:freezed_annotation/freezed_annotation.dart';
part 'test_result_entity.freezed.dart';
part 'test_result_entity.g.dart';

@freezed
class TestResultEntity with _$TestResultEntity {
  const factory TestResultEntity({
    String? programTitle,
    int? orderNumber,
    int? langId,
    List<CourseTestResultEntity>? courses,
  }) = _TestResultEntity;
  factory TestResultEntity.fromJson(Map<String, dynamic> json) => _$TestResultEntityFromJson(json);
}

@freezed
class CourseTestResultEntity with _$CourseTestResultEntity {
  const factory CourseTestResultEntity({
    String? courseTitle,
    int? orderNumber,
    List<CourseTopicTestResultEntity>? courseTopics,
  }) = _CourseTestResultEntity;
  factory CourseTestResultEntity.fromJson(Map<String, dynamic> json) => _$CourseTestResultEntityFromJson(json);
}

@freezed
class CourseTopicTestResultEntity with _$CourseTopicTestResultEntity {
  const factory CourseTopicTestResultEntity({
    String? courseTopicTitle,
    int? orderNumber,
    List<LessonTestResultEntity>? lessonTestResults,
  }) = _CourseTopicTestResultEntity;
  factory CourseTopicTestResultEntity.fromJson(Map<String, dynamic> json) => _$CourseTopicTestResultEntityFromJson(json);
}


@freezed
class LessonTestResultEntity with _$LessonTestResultEntity {
  const factory LessonTestResultEntity({
    String? lessonTitle,
    int? orderNumber,
    int? questionsCount,
    int? correctAnswersCount,
    int? attemptsCount,
    double? passResult,
  }) = _LessonTestResultEntity;
  factory LessonTestResultEntity.fromJson(Map<String, dynamic> json) => _$LessonTestResultEntityFromJson(json);
}