// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_lesson_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyLessonEntityImpl _$$MyLessonEntityImplFromJson(Map<String, dynamic> json) =>
    _$MyLessonEntityImpl(
      courseTitle: json['courseTitle'] as String?,
      iconFileId: json['iconFileId'] as String?,
      topics: (json['topics'] as List<dynamic>)
          .map((e) => MyLessonTopicEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MyLessonEntityImplToJson(
        _$MyLessonEntityImpl instance) =>
    <String, dynamic>{
      'courseTitle': instance.courseTitle,
      'iconFileId': instance.iconFileId,
      'topics': instance.topics,
    };

_$MyLessonTopicEntityImpl _$$MyLessonTopicEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MyLessonTopicEntityImpl(
      courseTopic: json['courseTopic'] as String?,
      courseTopicId: json['courseTopicId'] as String?,
      childTopics: (json['childTopics'] as List<dynamic>?)
          ?.map((e) =>
              MyLessonTopicChildEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MyLessonTopicEntityImplToJson(
        _$MyLessonTopicEntityImpl instance) =>
    <String, dynamic>{
      'courseTopic': instance.courseTopic,
      'courseTopicId': instance.courseTopicId,
      'childTopics': instance.childTopics,
    };

_$MyLessonTopicChildEntityImpl _$$MyLessonTopicChildEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MyLessonTopicChildEntityImpl(
      courseTopic: json['courseTopic'] as String?,
      courseTopicId: json['courseTopicId'] as String?,
      videoLessons: (json['videoLessons'] as List<dynamic>?)
          ?.map((e) => VideoLessonEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      lessonTests: (json['lessonTests'] as List<dynamic>?)
          ?.map((e) => LessonTestEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      homeworks: (json['homeworks'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$MyLessonTopicChildEntityImplToJson(
        _$MyLessonTopicChildEntityImpl instance) =>
    <String, dynamic>{
      'courseTopic': instance.courseTopic,
      'courseTopicId': instance.courseTopicId,
      'videoLessons': instance.videoLessons,
      'lessonTests': instance.lessonTests,
      'homeworks': instance.homeworks,
    };

_$VideoLessonEntityImpl _$$VideoLessonEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$VideoLessonEntityImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      orderNumber: (json['orderNumber'] as num?)?.toInt(),
      lessonTypeId: (json['lessonTypeId'] as num?)?.toInt(),
      lessonType: json['lessonType'] as String?,
      watchedDuration: (json['watchedDuration'] as num?)?.toDouble(),
      videoDuration: (json['videoDuration'] as num?)?.toDouble(),
      locked: json['locked'] as bool?,
      completionPercentage: (json['completionPercentage'] as num?)?.toDouble(),
      videoThumbnailId: json['videoThumbnailId'] as String?,
      isVideoClip: json['isVideoClip'] as bool?,
    );

Map<String, dynamic> _$$VideoLessonEntityImplToJson(
        _$VideoLessonEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'orderNumber': instance.orderNumber,
      'lessonTypeId': instance.lessonTypeId,
      'lessonType': instance.lessonType,
      'watchedDuration': instance.watchedDuration,
      'videoDuration': instance.videoDuration,
      'locked': instance.locked,
      'completionPercentage': instance.completionPercentage,
      'videoThumbnailId': instance.videoThumbnailId,
      'isVideoClip': instance.isVideoClip,
    };

_$LessonTestEntityImpl _$$LessonTestEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LessonTestEntityImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      orderNumber: (json['orderNumber'] as num?)?.toInt(),
      locked: json['locked'] as bool?,
      questionCount: (json['questionCount'] as num?)?.toInt(),
      completedQuestionCount: (json['completedQuestionCount'] as num?)?.toInt(),
      completedPercent: (json['completedPercent'] as num?)?.toDouble(),
      lessonTypeId: (json['lessonTypeId'] as num?)?.toInt(),
      lessonType: json['lessonType'] as String?,
      lessonTestThumbnailId: json['lessonTestThumbnailId'] as String?,
      correctAnswersCount: (json['correctAnswersCount'] as num?)?.toInt(),
      testResult: (json['testResult'] as num?)?.toDouble(),
      isCompleted: json['isCompleted'] as bool?,
      submissionLimit: (json['submissionLimit'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$LessonTestEntityImplToJson(
        _$LessonTestEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'orderNumber': instance.orderNumber,
      'locked': instance.locked,
      'questionCount': instance.questionCount,
      'completedQuestionCount': instance.completedQuestionCount,
      'completedPercent': instance.completedPercent,
      'lessonTypeId': instance.lessonTypeId,
      'lessonType': instance.lessonType,
      'lessonTestThumbnailId': instance.lessonTestThumbnailId,
      'correctAnswersCount': instance.correctAnswersCount,
      'testResult': instance.testResult,
      'isCompleted': instance.isCompleted,
      'submissionLimit': instance.submissionLimit,
    };
