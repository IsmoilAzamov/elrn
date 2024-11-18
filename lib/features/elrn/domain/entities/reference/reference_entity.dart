import 'package:freezed_annotation/freezed_annotation.dart';

part 'reference_entity.freezed.dart';
part 'reference_entity.g.dart';

@freezed
class ReferenceEntity with _$ReferenceEntity {
  const factory ReferenceEntity({
    String? courseId,
    String? title,
    String? fullName,
    String? startingDate,
    String? completingDate,
  }) = _ReferenceEntity;

  factory ReferenceEntity.fromJson(Map<String, dynamic> json) => _$ReferenceEntityFromJson(json);
}
