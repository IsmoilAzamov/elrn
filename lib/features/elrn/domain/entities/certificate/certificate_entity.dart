
import 'package:freezed_annotation/freezed_annotation.dart';

part 'certificate_entity.freezed.dart';
part 'certificate_entity.g.dart';




@freezed
class CertificateEntity with _$CertificateEntity {
  const factory CertificateEntity({
    final String? certificateFileId,
    final String? title,
    final String? fileExtension,
    final double? submissionLimit,
    final String? lessonTitle,
    final String? createdAt,
  }) = _CertificateEntity;

  factory CertificateEntity.fromJson(Map<String, dynamic> json) =>
      _$CertificateEntityFromJson(json);
}