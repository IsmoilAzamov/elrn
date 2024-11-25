import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../address/region_entity.dart';

part 'auth_info_entity.freezed.dart';
part 'auth_info_entity.g.dart';

@freezed
@HiveType(typeId: 8) // Assign a unique type ID for this entity
class AuthInfoEntity with _$AuthInfoEntity {
  const factory AuthInfoEntity({
    @HiveField(0) String? userName,
    @HiveField(1) String? fullName,
    @HiveField(2) String? shortName,
    @HiveField(3) String? firstName,
    @HiveField(4) String? middleName,
    @HiveField(5) String? lastName,
    @HiveField(6) String? livingRegion,
    @HiveField(7) String? livingDistrict,
    @HiveField(8) String? birthDate,
    @HiveField(9) String? birthRegion,
    @HiveField(10) String? passportSeria,
    @HiveField(11) String? currentOrganizationName,
    @HiveField(12) int? currentOrganizationId,
    @HiveField(13) RegionEntity? region, // Custom adapter needed
  }) = _AuthInfoEntity;

  factory AuthInfoEntity.fromJson(Map<String, dynamic> json) => _$AuthInfoEntityFromJson(json);
}
