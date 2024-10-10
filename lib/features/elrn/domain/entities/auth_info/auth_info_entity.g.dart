// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_info_entity.dart';

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
