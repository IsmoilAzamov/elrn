import 'package:freezed_annotation/freezed_annotation.dart';

part 'region_entity.freezed.dart';
part 'region_entity.g.dart';


@freezed
class RegionEntity with _$RegionEntity {
  const factory RegionEntity({
    String? regionName,
    String? districtName,
    int? regionId,
    int? districtId,
    int? appId,
  }) = _RegionEntity;

  factory RegionEntity.fromJson(Map<String, dynamic> json) => _$RegionEntityFromJson(json);

}