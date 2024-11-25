import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'region_entity.freezed.dart';
part 'region_entity.g.dart';

@freezed
@HiveType(typeId: 9) // Assign a unique type ID
class RegionEntity with _$RegionEntity {
  const factory RegionEntity({
    @HiveField(0) String? regionName,
    @HiveField(1) String? districtName,
    @HiveField(2) int? regionId,
    @HiveField(3) int? districtId,
    @HiveField(4) int? appId,
  }) = _RegionEntity;

  factory RegionEntity.fromJson(Map<String, dynamic> json) => _$RegionEntityFromJson(json);
}
