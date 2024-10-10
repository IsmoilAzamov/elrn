

import 'package:elrn/features/elrn/domain/entities/address/region_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_info_entity.g.dart';

part 'auth_info_entity.freezed.dart';

@freezed
class AuthInfoEntity with _$AuthInfoEntity {
  const factory AuthInfoEntity({
    String? userName,
    String? fullName,
    String? shortName,
    String? firstName,
    String? middleName,
    String? lastName,
    String? livingRegion,
    String? livingDistrict,
    String? birthDate,
    String? birthRegion,
    String? passportSeria,
    String? currentOrganizationName,
    int? currentOrganizationId,
    RegionEntity? region,
  }) = _AuthInfoEntity;

  factory AuthInfoEntity.fromJson(Map<String, dynamic> json) => _$AuthInfoEntityFromJson(json);

  //toJson
}


