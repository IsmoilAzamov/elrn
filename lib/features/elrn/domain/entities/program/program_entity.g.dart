// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProgramEntityAdapter extends TypeAdapter<ProgramEntity> {
  @override
  final int typeId = 1;

  @override
  ProgramEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProgramEntity(
      id: fields[0] as String?,
      title: fields[1] as String?,
      price: fields[2] as double?,
      description: fields[3] as String?,
      docOn: fields[4] as String?,
      docNumber: fields[5] as String?,
      status: fields[6] as String?,
      language: fields[7] as String?,
      languageId: fields[8] as int?,
      statusId: fields[9] as int?,
      organizationId: fields[10] as int?,
      organization: fields[11] as String?,
      courseTopicChildCount: fields[12] as int?,
      courseTopicCount: fields[13] as int?,
      iconFileId: fields[14] as String?,
      backgroundColorCode: fields[15] as String?,
      courseCount: fields[16] as int?,
      completionPercent: fields[17] as double?,
      totalVideosCount: fields[18] as int?,
      totalTestsCount: fields[19] as int?,
      canStart: fields[20] as bool?,
      totalCertificatesCount: fields[21] as int?,
      courses: (fields[22] as List?)?.cast<CourseEntity>(),
      professions: (fields[23] as List?)?.cast<ProfessionEntity>(),
      programDuration: fields[24] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ProgramEntity obj) {
    writer
      ..writeByte(25)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.docOn)
      ..writeByte(5)
      ..write(obj.docNumber)
      ..writeByte(6)
      ..write(obj.status)
      ..writeByte(7)
      ..write(obj.language)
      ..writeByte(8)
      ..write(obj.languageId)
      ..writeByte(9)
      ..write(obj.statusId)
      ..writeByte(10)
      ..write(obj.organizationId)
      ..writeByte(11)
      ..write(obj.organization)
      ..writeByte(12)
      ..write(obj.courseTopicChildCount)
      ..writeByte(13)
      ..write(obj.courseTopicCount)
      ..writeByte(14)
      ..write(obj.iconFileId)
      ..writeByte(15)
      ..write(obj.backgroundColorCode)
      ..writeByte(16)
      ..write(obj.courseCount)
      ..writeByte(17)
      ..write(obj.completionPercent)
      ..writeByte(18)
      ..write(obj.totalVideosCount)
      ..writeByte(19)
      ..write(obj.totalTestsCount)
      ..writeByte(20)
      ..write(obj.canStart)
      ..writeByte(21)
      ..write(obj.totalCertificatesCount)
      ..writeByte(22)
      ..write(obj.courses)
      ..writeByte(23)
      ..write(obj.professions)
      ..writeByte(24)
      ..write(obj.programDuration);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProgramEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CourseEntityAdapter extends TypeAdapter<CourseEntity> {
  @override
  final int typeId = 2;

  @override
  CourseEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CourseEntity(
      id: fields[0] as String?,
      title: fields[1] as String?,
      details: fields[2] as String?,
      docOn: fields[3] as String?,
      releaseOn: fields[4] as String?,
      docNumber: fields[5] as String?,
      orderNumber: fields[6] as String?,
      courseDuration: fields[7] as int?,
      iconFileId: fields[8] as String?,
      courseTypeId: fields[9] as int?,
      courseType: fields[10] as String?,
      courseTopicCount: fields[11] as int?,
      canStart: fields[12] as bool?,
      completionPercent: fields[13] as double?,
      completedCourseTopicCount: fields[14] as int?,
      topics: (fields[15] as List?)?.cast<TopicEntity>(),
    );
  }

  @override
  void write(BinaryWriter writer, CourseEntity obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.details)
      ..writeByte(3)
      ..write(obj.docOn)
      ..writeByte(4)
      ..write(obj.releaseOn)
      ..writeByte(5)
      ..write(obj.docNumber)
      ..writeByte(6)
      ..write(obj.orderNumber)
      ..writeByte(7)
      ..write(obj.courseDuration)
      ..writeByte(8)
      ..write(obj.iconFileId)
      ..writeByte(9)
      ..write(obj.courseTypeId)
      ..writeByte(10)
      ..write(obj.courseType)
      ..writeByte(11)
      ..write(obj.courseTopicCount)
      ..writeByte(12)
      ..write(obj.canStart)
      ..writeByte(13)
      ..write(obj.completionPercent)
      ..writeByte(14)
      ..write(obj.completedCourseTopicCount)
      ..writeByte(15)
      ..write(obj.topics);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CourseEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TopicEntityAdapter extends TypeAdapter<TopicEntity> {
  @override
  final int typeId = 3;

  @override
  TopicEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TopicEntity(
      id: fields[0] as String?,
      title: fields[1] as String?,
      details: fields[2] as String?,
      docOn: fields[3] as String?,
      releaseOn: fields[4] as String?,
      docNumber: fields[5] as String?,
      orderNumber: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, TopicEntity obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.details)
      ..writeByte(3)
      ..write(obj.docOn)
      ..writeByte(4)
      ..write(obj.releaseOn)
      ..writeByte(5)
      ..write(obj.docNumber)
      ..writeByte(6)
      ..write(obj.orderNumber);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TopicEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ProfessionEntityAdapter extends TypeAdapter<ProfessionEntity> {
  @override
  final int typeId = 4;

  @override
  ProfessionEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProfessionEntity(
      id: fields[0] as String?,
      title: fields[1] as String?,
      details: fields[2] as String?,
      docOn: fields[3] as String?,
      docNumber: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ProfessionEntity obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.details)
      ..writeByte(3)
      ..write(obj.docOn)
      ..writeByte(4)
      ..write(obj.docNumber);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfessionEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
      programDuration: json['programDuration'] as String?,
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
      'programDuration': instance.programDuration,
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
