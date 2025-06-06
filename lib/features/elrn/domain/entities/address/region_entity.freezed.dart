// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'region_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegionEntity _$RegionEntityFromJson(Map<String, dynamic> json) {
  return _RegionEntity.fromJson(json);
}

/// @nodoc
mixin _$RegionEntity {
  @HiveField(0)
  String? get regionName => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get districtName => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get regionId => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get districtId => throw _privateConstructorUsedError;
  @HiveField(4)
  int? get appId => throw _privateConstructorUsedError;

  /// Serializes this RegionEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegionEntityCopyWith<RegionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionEntityCopyWith<$Res> {
  factory $RegionEntityCopyWith(
          RegionEntity value, $Res Function(RegionEntity) then) =
      _$RegionEntityCopyWithImpl<$Res, RegionEntity>;
  @useResult
  $Res call(
      {@HiveField(0) String? regionName,
      @HiveField(1) String? districtName,
      @HiveField(2) int? regionId,
      @HiveField(3) int? districtId,
      @HiveField(4) int? appId});
}

/// @nodoc
class _$RegionEntityCopyWithImpl<$Res, $Val extends RegionEntity>
    implements $RegionEntityCopyWith<$Res> {
  _$RegionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regionName = freezed,
    Object? districtName = freezed,
    Object? regionId = freezed,
    Object? districtId = freezed,
    Object? appId = freezed,
  }) {
    return _then(_value.copyWith(
      regionName: freezed == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String?,
      districtName: freezed == districtName
          ? _value.districtName
          : districtName // ignore: cast_nullable_to_non_nullable
              as String?,
      regionId: freezed == regionId
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int?,
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int?,
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegionEntityImplCopyWith<$Res>
    implements $RegionEntityCopyWith<$Res> {
  factory _$$RegionEntityImplCopyWith(
          _$RegionEntityImpl value, $Res Function(_$RegionEntityImpl) then) =
      __$$RegionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? regionName,
      @HiveField(1) String? districtName,
      @HiveField(2) int? regionId,
      @HiveField(3) int? districtId,
      @HiveField(4) int? appId});
}

/// @nodoc
class __$$RegionEntityImplCopyWithImpl<$Res>
    extends _$RegionEntityCopyWithImpl<$Res, _$RegionEntityImpl>
    implements _$$RegionEntityImplCopyWith<$Res> {
  __$$RegionEntityImplCopyWithImpl(
      _$RegionEntityImpl _value, $Res Function(_$RegionEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regionName = freezed,
    Object? districtName = freezed,
    Object? regionId = freezed,
    Object? districtId = freezed,
    Object? appId = freezed,
  }) {
    return _then(_$RegionEntityImpl(
      regionName: freezed == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String?,
      districtName: freezed == districtName
          ? _value.districtName
          : districtName // ignore: cast_nullable_to_non_nullable
              as String?,
      regionId: freezed == regionId
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int?,
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int?,
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionEntityImpl implements _RegionEntity {
  const _$RegionEntityImpl(
      {@HiveField(0) this.regionName,
      @HiveField(1) this.districtName,
      @HiveField(2) this.regionId,
      @HiveField(3) this.districtId,
      @HiveField(4) this.appId});

  factory _$RegionEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionEntityImplFromJson(json);

  @override
  @HiveField(0)
  final String? regionName;
  @override
  @HiveField(1)
  final String? districtName;
  @override
  @HiveField(2)
  final int? regionId;
  @override
  @HiveField(3)
  final int? districtId;
  @override
  @HiveField(4)
  final int? appId;

  @override
  String toString() {
    return 'RegionEntity(regionName: $regionName, districtName: $districtName, regionId: $regionId, districtId: $districtId, appId: $appId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionEntityImpl &&
            (identical(other.regionName, regionName) ||
                other.regionName == regionName) &&
            (identical(other.districtName, districtName) ||
                other.districtName == districtName) &&
            (identical(other.regionId, regionId) ||
                other.regionId == regionId) &&
            (identical(other.districtId, districtId) ||
                other.districtId == districtId) &&
            (identical(other.appId, appId) || other.appId == appId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, regionName, districtName, regionId, districtId, appId);

  /// Create a copy of RegionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionEntityImplCopyWith<_$RegionEntityImpl> get copyWith =>
      __$$RegionEntityImplCopyWithImpl<_$RegionEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionEntityImplToJson(
      this,
    );
  }
}

abstract class _RegionEntity implements RegionEntity {
  const factory _RegionEntity(
      {@HiveField(0) final String? regionName,
      @HiveField(1) final String? districtName,
      @HiveField(2) final int? regionId,
      @HiveField(3) final int? districtId,
      @HiveField(4) final int? appId}) = _$RegionEntityImpl;

  factory _RegionEntity.fromJson(Map<String, dynamic> json) =
      _$RegionEntityImpl.fromJson;

  @override
  @HiveField(0)
  String? get regionName;
  @override
  @HiveField(1)
  String? get districtName;
  @override
  @HiveField(2)
  int? get regionId;
  @override
  @HiveField(3)
  int? get districtId;
  @override
  @HiveField(4)
  int? get appId;

  /// Create a copy of RegionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegionEntityImplCopyWith<_$RegionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
