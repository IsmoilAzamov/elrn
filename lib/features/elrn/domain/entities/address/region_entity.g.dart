// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_entity.dart';

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
