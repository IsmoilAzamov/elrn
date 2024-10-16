// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProgramEntityImpl _$$ProgramEntityImplFromJson(Map<String, dynamic> json) =>
    _$ProgramEntityImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      description: json['description'] as String?,
      docOn: json['docOn'] as String?,
      docNumber: json['docNumber'] as String?,
      status: json['status'] as String?,
      language: json['language'] as String?,
      languageId: (json['languageId'] as num?)?.toInt(),
      statusId: (json['statusId'] as num?)?.toInt(),
      organizationId: (json['organizationId'] as num?)?.toInt(),
      organization: json['organization'] as String?,
      courseTopicChildCount: (json['courseTopicChildCount'] as num?)?.toInt(),
      courseTopicCount: (json['courseTopicCount'] as num?)?.toInt(),
      iconFileId: json['iconFileId'] as String?,
      backgroundColorCode: json['backgroundColorCode'] as String?,
      courseCount: (json['courseCount'] as num?)?.toInt(),
      completionPercent: (json['completionPercent'] as num?)?.toDouble(),
      totalVideosCount: (json['totalVideosCount'] as num?)?.toInt(),
      totalTestsCount: (json['totalTestsCount'] as num?)?.toInt(),
      canStart: json['canStart'] as bool?,
      totalCertificatesCount: (json['totalCertificatesCount'] as num?)?.toInt(),
      courses: (json['courses'] as List<dynamic>?)
          ?.map((e) => CourseEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      professions: (json['professions'] as List<dynamic>?)
          ?.map((e) => ProfessionEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProgramEntityImplToJson(_$ProgramEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'docOn': instance.docOn,
      'docNumber': instance.docNumber,
      'status': instance.status,
      'language': instance.language,
      'languageId': instance.languageId,
      'statusId': instance.statusId,
      'organizationId': instance.organizationId,
      'organization': instance.organization,
      'courseTopicChildCount': instance.courseTopicChildCount,
      'courseTopicCount': instance.courseTopicCount,
      'iconFileId': instance.iconFileId,
      'backgroundColorCode': instance.backgroundColorCode,
      'courseCount': instance.courseCount,
      'completionPercent': instance.completionPercent,
      'totalVideosCount': instance.totalVideosCount,
      'totalTestsCount': instance.totalTestsCount,
      'canStart': instance.canStart,
      'totalCertificatesCount': instance.totalCertificatesCount,
      'courses': instance.courses,
      'professions': instance.professions,
    };

_$CourseEntityImpl _$$CourseEntityImplFromJson(Map<String, dynamic> json) =>
    _$CourseEntityImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      details: json['details'] as String?,
      docOn: json['docOn'] as String?,
      releaseOn: json['releaseOn'] as String?,
      docNumber: json['docNumber'] as String?,
      orderNumber: json['orderNumber'] as String?,
      courseDuration: (json['courseDuration'] as num?)?.toInt(),
      iconFileId: json['iconFileId'] as String?,
      courseTypeId: (json['courseTypeId'] as num?)?.toInt(),
      courseType: json['courseType'] as String?,
      courseTopicCount: (json['courseTopicCount'] as num?)?.toInt(),
      canStart: json['canStart'] as bool?,
      completionPercent: (json['completionPercent'] as num?)?.toDouble(),
      completedCourseTopicCount:
          (json['completedCourseTopicCount'] as num?)?.toInt(),
      topics: (json['topics'] as List<dynamic>?)
          ?.map((e) => TopicEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CourseEntityImplToJson(_$CourseEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'details': instance.details,
      'docOn': instance.docOn,
      'releaseOn': instance.releaseOn,
      'docNumber': instance.docNumber,
      'orderNumber': instance.orderNumber,
      'courseDuration': instance.courseDuration,
      'iconFileId': instance.iconFileId,
      'courseTypeId': instance.courseTypeId,
      'courseType': instance.courseType,
      'courseTopicCount': instance.courseTopicCount,
      'canStart': instance.canStart,
      'completionPercent': instance.completionPercent,
      'completedCourseTopicCount': instance.completedCourseTopicCount,
      'topics': instance.topics,
    };

_$TopicEntityImpl _$$TopicEntityImplFromJson(Map<String, dynamic> json) =>
    _$TopicEntityImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      details: json['details'] as String?,
      docOn: json['docOn'] as String?,
      releaseOn: json['releaseOn'] as String?,
      docNumber: json['docNumber'] as String?,
      orderNumber: json['orderNumber'] as String?,
    );

Map<String, dynamic> _$$TopicEntityImplToJson(_$TopicEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'details': instance.details,
      'docOn': instance.docOn,
      'releaseOn': instance.releaseOn,
      'docNumber': instance.docNumber,
      'orderNumber': instance.orderNumber,
    };

_$ProfessionEntityImpl _$$ProfessionEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfessionEntityImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      details: json['details'] as String?,
      docOn: json['docOn'] as String?,
      docNumber: json['docNumber'] as String?,
    );

Map<String, dynamic> _$$ProfessionEntityImplToJson(
        _$ProfessionEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'details': instance.details,
      'docOn': instance.docOn,
      'docNumber': instance.docNumber,
    };
