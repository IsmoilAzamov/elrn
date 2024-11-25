// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_lesson_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VideoLessonEntityAdapter extends TypeAdapter<VideoLessonEntity> {
  @override
  final int typeId = 5;

  @override
  VideoLessonEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VideoLessonEntity(
      id: fields[0] as String?,
      title: fields[1] as String?,
      orderNumber: fields[2] as int?,
      lessonTypeId: fields[3] as int?,
      lessonType: fields[4] as String?,
      watchedDuration: fields[5] as double?,
      videoDuration: fields[6] as double?,
      locked: fields[7] as bool?,
      completionPercentage: fields[8] as double?,
      videoThumbnailId: fields[9] as String?,
      isVideoClip: fields[10] as bool?,
      course: fields[11] as String?,
      courseId: fields[12] as String?,
      courseTopic: fields[13] as String?,
      courseTopicId: fields[14] as String?,
      lessonId: fields[15] as String?,
      details: fields[16] as String?,
      nextVideoLessonId: fields[17] as String?,
      nextVideoLessonTitle: fields[18] as String?,
      watchedPercent: fields[19] as double?,
      canRate: fields[20] as bool?,
      videoFiles: (fields[21] as List?)?.cast<VideoFileEntity>(),
      materialFiles: (fields[22] as List?)?.cast<MaterialFileEntity>(),
    );
  }

  @override
  void write(BinaryWriter writer, VideoLessonEntity obj) {
    writer
      ..writeByte(23)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.orderNumber)
      ..writeByte(3)
      ..write(obj.lessonTypeId)
      ..writeByte(4)
      ..write(obj.lessonType)
      ..writeByte(5)
      ..write(obj.watchedDuration)
      ..writeByte(6)
      ..write(obj.videoDuration)
      ..writeByte(7)
      ..write(obj.locked)
      ..writeByte(8)
      ..write(obj.completionPercentage)
      ..writeByte(9)
      ..write(obj.videoThumbnailId)
      ..writeByte(10)
      ..write(obj.isVideoClip)
      ..writeByte(11)
      ..write(obj.course)
      ..writeByte(12)
      ..write(obj.courseId)
      ..writeByte(13)
      ..write(obj.courseTopic)
      ..writeByte(14)
      ..write(obj.courseTopicId)
      ..writeByte(15)
      ..write(obj.lessonId)
      ..writeByte(16)
      ..write(obj.details)
      ..writeByte(17)
      ..write(obj.nextVideoLessonId)
      ..writeByte(18)
      ..write(obj.nextVideoLessonTitle)
      ..writeByte(19)
      ..write(obj.watchedPercent)
      ..writeByte(20)
      ..write(obj.canRate)
      ..writeByte(21)
      ..write(obj.videoFiles)
      ..writeByte(22)
      ..write(obj.materialFiles);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VideoLessonEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class VideoFileEntityAdapter extends TypeAdapter<VideoFileEntity> {
  @override
  final int typeId = 6;

  @override
  VideoFileEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VideoFileEntity(
      id: fields[0] as String?,
      fileName: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, VideoFileEntity obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.fileName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VideoFileEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MaterialFileEntityAdapter extends TypeAdapter<MaterialFileEntity> {
  @override
  final int typeId = 7;

  @override
  MaterialFileEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MaterialFileEntity(
      id: fields[0] as String?,
      fileName: fields[1] as String?,
      fileSize: fields[2] as int?,
      fileExtension: fields[3] as String?,
      canDownload: fields[4] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, MaterialFileEntity obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.fileName)
      ..writeByte(2)
      ..write(obj.fileSize)
      ..writeByte(3)
      ..write(obj.fileExtension)
      ..writeByte(4)
      ..write(obj.canDownload);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MaterialFileEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyLessonEntityImpl _$$MyLessonEntityImplFromJson(Map<String, dynamic> json) =>
    _$MyLessonEntityImpl(
      courseTitle: json['courseTitle'] as String?,
      iconFileId: json['iconFileId'] as String?,
      topics: (json['topics'] as List<dynamic>?)
          ?.map((e) => MyLessonTopicEntity.fromJson(e as Map<String, dynamic>))
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
      course: json['course'] as String?,
      courseId: json['courseId'] as String?,
      courseTopic: json['courseTopic'] as String?,
      courseTopicId: json['courseTopicId'] as String?,
      lessonId: json['lessonId'] as String?,
      details: json['details'] as String?,
      nextVideoLessonId: json['nextVideoLessonId'] as String?,
      nextVideoLessonTitle: json['nextVideoLessonTitle'] as String?,
      watchedPercent: (json['watchedPercent'] as num?)?.toDouble(),
      canRate: json['canRate'] as bool?,
      videoFiles: (json['videoFiles'] as List<dynamic>?)
          ?.map((e) => VideoFileEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      materialFiles: (json['materialFiles'] as List<dynamic>?)
          ?.map((e) => MaterialFileEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'course': instance.course,
      'courseId': instance.courseId,
      'courseTopic': instance.courseTopic,
      'courseTopicId': instance.courseTopicId,
      'lessonId': instance.lessonId,
      'details': instance.details,
      'nextVideoLessonId': instance.nextVideoLessonId,
      'nextVideoLessonTitle': instance.nextVideoLessonTitle,
      'watchedPercent': instance.watchedPercent,
      'canRate': instance.canRate,
      'videoFiles': instance.videoFiles,
      'materialFiles': instance.materialFiles,
    };

_$LessonTestEntityImpl _$$LessonTestEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LessonTestEntityImpl(
      courseId: json['courseId'] as String?,
      courseTopicId: json['courseTopicId'] as String?,
      details: json['details'] as String?,
      id: json['id'] as String?,
      title: json['title'] as String?,
      totalDuration: (json['totalDuration'] as num?)?.toDouble(),
      attemptId: json['attemptId'] as String?,
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
      testDuration: (json['testDuration'] as num?)?.toDouble(),
      totalSpentDuration: (json['totalSpentDuration'] as num?)?.toDouble(),
      totalQuestionCount: (json['totalQuestionCount'] as num?)?.toInt(),
      incorrectAnswersCount: (json['incorrectAnswersCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LessonTestEntityImplToJson(
        _$LessonTestEntityImpl instance) =>
    <String, dynamic>{
      'courseId': instance.courseId,
      'courseTopicId': instance.courseTopicId,
      'details': instance.details,
      'id': instance.id,
      'title': instance.title,
      'totalDuration': instance.totalDuration,
      'attemptId': instance.attemptId,
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
      'testDuration': instance.testDuration,
      'totalSpentDuration': instance.totalSpentDuration,
      'totalQuestionCount': instance.totalQuestionCount,
      'incorrectAnswersCount': instance.incorrectAnswersCount,
    };

_$VideoFileEntityImpl _$$VideoFileEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$VideoFileEntityImpl(
      id: json['id'] as String?,
      fileName: json['fileName'] as String?,
    );

Map<String, dynamic> _$$VideoFileEntityImplToJson(
        _$VideoFileEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fileName': instance.fileName,
    };

_$MaterialFileEntityImpl _$$MaterialFileEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MaterialFileEntityImpl(
      id: json['id'] as String?,
      fileName: json['fileName'] as String?,
      fileSize: (json['fileSize'] as num?)?.toInt(),
      fileExtension: json['fileExtension'] as String?,
      canDownload: json['canDownload'] as bool?,
    );

Map<String, dynamic> _$$MaterialFileEntityImplToJson(
        _$MaterialFileEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fileName': instance.fileName,
      'fileSize': instance.fileSize,
      'fileExtension': instance.fileExtension,
      'canDownload': instance.canDownload,
    };
