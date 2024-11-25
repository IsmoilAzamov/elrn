// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RegionEntityAdapter extends TypeAdapter<RegionEntity> {
  @override
  final int typeId = 9;

  @override
  RegionEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RegionEntity(
      regionName: fields[0] as String?,
      districtName: fields[1] as String?,
      regionId: fields[2] as int?,
      districtId: fields[3] as int?,
      appId: fields[4] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, RegionEntity obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.regionName)
      ..writeByte(1)
      ..write(obj.districtName)
      ..writeByte(2)
      ..write(obj.regionId)
      ..writeByte(3)
      ..write(obj.districtId)
      ..writeByte(4)
      ..write(obj.appId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RegionEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegionEntityImpl _$$RegionEntityImplFromJson(Map<String, dynamic> json) =>
    _$RegionEntityImpl(
      regionName: json['regionName'] as String?,
      districtName: json['districtName'] as String?,
      regionId: (json['regionId'] as num?)?.toInt(),
      districtId: (json['districtId'] as num?)?.toInt(),
      appId: (json['appId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RegionEntityImplToJson(_$RegionEntityImpl instance) =>
    <String, dynamic>{
      'regionName': instance.regionName,
      'districtName': instance.districtName,
      'regionId': instance.regionId,
      'districtId': instance.districtId,
      'appId': instance.appId,
    };
