// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_info_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuthInfoEntityAdapter extends TypeAdapter<AuthInfoEntity> {
  @override
  final int typeId = 8;

  @override
  AuthInfoEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuthInfoEntity(
      userName: fields[0] as String?,
      fullName: fields[1] as String?,
      shortName: fields[2] as String?,
      firstName: fields[3] as String?,
      middleName: fields[4] as String?,
      lastName: fields[5] as String?,
      livingRegion: fields[6] as String?,
      livingDistrict: fields[7] as String?,
      birthDate: fields[8] as String?,
      birthRegion: fields[9] as String?,
      passportSeria: fields[10] as String?,
      currentOrganizationName: fields[11] as String?,
      currentOrganizationId: fields[12] as int?,
      region: fields[13] as RegionEntity?,
    );
  }

  @override
  void write(BinaryWriter writer, AuthInfoEntity obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.userName)
      ..writeByte(1)
      ..write(obj.fullName)
      ..writeByte(2)
      ..write(obj.shortName)
      ..writeByte(3)
      ..write(obj.firstName)
      ..writeByte(4)
      ..write(obj.middleName)
      ..writeByte(5)
      ..write(obj.lastName)
      ..writeByte(6)
      ..write(obj.livingRegion)
      ..writeByte(7)
      ..write(obj.livingDistrict)
      ..writeByte(8)
      ..write(obj.birthDate)
      ..writeByte(9)
      ..write(obj.birthRegion)
      ..writeByte(10)
      ..write(obj.passportSeria)
      ..writeByte(11)
      ..write(obj.currentOrganizationName)
      ..writeByte(12)
      ..write(obj.currentOrganizationId)
      ..writeByte(13)
      ..write(obj.region);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthInfoEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthInfoEntityImpl _$$AuthInfoEntityImplFromJson(Map<String, dynamic> json) =>
    _$AuthInfoEntityImpl(
      userName: json['userName'] as String?,
      fullName: json['fullName'] as String?,
      shortName: json['shortName'] as String?,
      firstName: json['firstName'] as String?,
      middleName: json['middleName'] as String?,
      lastName: json['lastName'] as String?,
      livingRegion: json['livingRegion'] as String?,
      livingDistrict: json['livingDistrict'] as String?,
      birthDate: json['birthDate'] as String?,
      birthRegion: json['birthRegion'] as String?,
      passportSeria: json['passportSeria'] as String?,
      currentOrganizationName: json['currentOrganizationName'] as String?,
      currentOrganizationId: (json['currentOrganizationId'] as num?)?.toInt(),
      region: json['region'] == null
          ? null
          : RegionEntity.fromJson(json['region'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthInfoEntityImplToJson(
        _$AuthInfoEntityImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'fullName': instance.fullName,
      'shortName': instance.shortName,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'livingRegion': instance.livingRegion,
      'livingDistrict': instance.livingDistrict,
      'birthDate': instance.birthDate,
      'birthRegion': instance.birthRegion,
      'passportSeria': instance.passportSeria,
      'currentOrganizationName': instance.currentOrganizationName,
      'currentOrganizationId': instance.currentOrganizationId,
      'region': instance.region,
    };
