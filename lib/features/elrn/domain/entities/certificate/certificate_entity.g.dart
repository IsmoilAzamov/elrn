// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificate_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CertificateEntityImpl _$$CertificateEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CertificateEntityImpl(
      certificateFileId: json['certificateFileId'] as String?,
      title: json['title'] as String?,
      fileExtension: json['fileExtension'] as String?,
      submissionLimit: (json['submissionLimit'] as num?)?.toDouble(),
      lessonTitle: json['lessonTitle'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$CertificateEntityImplToJson(
        _$CertificateEntityImpl instance) =>
    <String, dynamic>{
      'certificateFileId': instance.certificateFileId,
      'title': instance.title,
      'fileExtension': instance.fileExtension,
      'submissionLimit': instance.submissionLimit,
      'lessonTitle': instance.lessonTitle,
      'createdAt': instance.createdAt,
    };
