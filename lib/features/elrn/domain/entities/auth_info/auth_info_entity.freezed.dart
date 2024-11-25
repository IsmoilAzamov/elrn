// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthInfoEntity _$AuthInfoEntityFromJson(Map<String, dynamic> json) {
  return _AuthInfoEntity.fromJson(json);
}

/// @nodoc
mixin _$AuthInfoEntity {
  @HiveField(0)
  String? get userName => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get fullName => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get shortName => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get firstName => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get middleName => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get lastName => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get livingRegion => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get livingDistrict => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get birthDate => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get birthRegion => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get passportSeria => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get currentOrganizationName => throw _privateConstructorUsedError;
  @HiveField(12)
  int? get currentOrganizationId => throw _privateConstructorUsedError;
  @HiveField(13)
  RegionEntity? get region => throw _privateConstructorUsedError;

  /// Serializes this AuthInfoEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthInfoEntityCopyWith<AuthInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthInfoEntityCopyWith<$Res> {
  factory $AuthInfoEntityCopyWith(
          AuthInfoEntity value, $Res Function(AuthInfoEntity) then) =
      _$AuthInfoEntityCopyWithImpl<$Res, AuthInfoEntity>;
  @useResult
  $Res call(
      {@HiveField(0) String? userName,
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
      @HiveField(13) RegionEntity? region});

  $RegionEntityCopyWith<$Res>? get region;
}

/// @nodoc
class _$AuthInfoEntityCopyWithImpl<$Res, $Val extends AuthInfoEntity>
    implements $AuthInfoEntityCopyWith<$Res> {
  _$AuthInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? fullName = freezed,
    Object? shortName = freezed,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? livingRegion = freezed,
    Object? livingDistrict = freezed,
    Object? birthDate = freezed,
    Object? birthRegion = freezed,
    Object? passportSeria = freezed,
    Object? currentOrganizationName = freezed,
    Object? currentOrganizationId = freezed,
    Object? region = freezed,
  }) {
    return _then(_value.copyWith(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: freezed == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      livingRegion: freezed == livingRegion
          ? _value.livingRegion
          : livingRegion // ignore: cast_nullable_to_non_nullable
              as String?,
      livingDistrict: freezed == livingDistrict
          ? _value.livingDistrict
          : livingDistrict // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      birthRegion: freezed == birthRegion
          ? _value.birthRegion
          : birthRegion // ignore: cast_nullable_to_non_nullable
              as String?,
      passportSeria: freezed == passportSeria
          ? _value.passportSeria
          : passportSeria // ignore: cast_nullable_to_non_nullable
              as String?,
      currentOrganizationName: freezed == currentOrganizationName
          ? _value.currentOrganizationName
          : currentOrganizationName // ignore: cast_nullable_to_non_nullable
              as String?,
      currentOrganizationId: freezed == currentOrganizationId
          ? _value.currentOrganizationId
          : currentOrganizationId // ignore: cast_nullable_to_non_nullable
              as int?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as RegionEntity?,
    ) as $Val);
  }

  /// Create a copy of AuthInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegionEntityCopyWith<$Res>? get region {
    if (_value.region == null) {
      return null;
    }

    return $RegionEntityCopyWith<$Res>(_value.region!, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthInfoEntityImplCopyWith<$Res>
    implements $AuthInfoEntityCopyWith<$Res> {
  factory _$$AuthInfoEntityImplCopyWith(_$AuthInfoEntityImpl value,
          $Res Function(_$AuthInfoEntityImpl) then) =
      __$$AuthInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? userName,
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
      @HiveField(13) RegionEntity? region});

  @override
  $RegionEntityCopyWith<$Res>? get region;
}

/// @nodoc
class __$$AuthInfoEntityImplCopyWithImpl<$Res>
    extends _$AuthInfoEntityCopyWithImpl<$Res, _$AuthInfoEntityImpl>
    implements _$$AuthInfoEntityImplCopyWith<$Res> {
  __$$AuthInfoEntityImplCopyWithImpl(
      _$AuthInfoEntityImpl _value, $Res Function(_$AuthInfoEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? fullName = freezed,
    Object? shortName = freezed,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? livingRegion = freezed,
    Object? livingDistrict = freezed,
    Object? birthDate = freezed,
    Object? birthRegion = freezed,
    Object? passportSeria = freezed,
    Object? currentOrganizationName = freezed,
    Object? currentOrganizationId = freezed,
    Object? region = freezed,
  }) {
    return _then(_$AuthInfoEntityImpl(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: freezed == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      livingRegion: freezed == livingRegion
          ? _value.livingRegion
          : livingRegion // ignore: cast_nullable_to_non_nullable
              as String?,
      livingDistrict: freezed == livingDistrict
          ? _value.livingDistrict
          : livingDistrict // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      birthRegion: freezed == birthRegion
          ? _value.birthRegion
          : birthRegion // ignore: cast_nullable_to_non_nullable
              as String?,
      passportSeria: freezed == passportSeria
          ? _value.passportSeria
          : passportSeria // ignore: cast_nullable_to_non_nullable
              as String?,
      currentOrganizationName: freezed == currentOrganizationName
          ? _value.currentOrganizationName
          : currentOrganizationName // ignore: cast_nullable_to_non_nullable
              as String?,
      currentOrganizationId: freezed == currentOrganizationId
          ? _value.currentOrganizationId
          : currentOrganizationId // ignore: cast_nullable_to_non_nullable
              as int?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as RegionEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthInfoEntityImpl implements _AuthInfoEntity {
  const _$AuthInfoEntityImpl(
      {@HiveField(0) this.userName,
      @HiveField(1) this.fullName,
      @HiveField(2) this.shortName,
      @HiveField(3) this.firstName,
      @HiveField(4) this.middleName,
      @HiveField(5) this.lastName,
      @HiveField(6) this.livingRegion,
      @HiveField(7) this.livingDistrict,
      @HiveField(8) this.birthDate,
      @HiveField(9) this.birthRegion,
      @HiveField(10) this.passportSeria,
      @HiveField(11) this.currentOrganizationName,
      @HiveField(12) this.currentOrganizationId,
      @HiveField(13) this.region});

  factory _$AuthInfoEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthInfoEntityImplFromJson(json);

  @override
  @HiveField(0)
  final String? userName;
  @override
  @HiveField(1)
  final String? fullName;
  @override
  @HiveField(2)
  final String? shortName;
  @override
  @HiveField(3)
  final String? firstName;
  @override
  @HiveField(4)
  final String? middleName;
  @override
  @HiveField(5)
  final String? lastName;
  @override
  @HiveField(6)
  final String? livingRegion;
  @override
  @HiveField(7)
  final String? livingDistrict;
  @override
  @HiveField(8)
  final String? birthDate;
  @override
  @HiveField(9)
  final String? birthRegion;
  @override
  @HiveField(10)
  final String? passportSeria;
  @override
  @HiveField(11)
  final String? currentOrganizationName;
  @override
  @HiveField(12)
  final int? currentOrganizationId;
  @override
  @HiveField(13)
  final RegionEntity? region;

  @override
  String toString() {
    return 'AuthInfoEntity(userName: $userName, fullName: $fullName, shortName: $shortName, firstName: $firstName, middleName: $middleName, lastName: $lastName, livingRegion: $livingRegion, livingDistrict: $livingDistrict, birthDate: $birthDate, birthRegion: $birthRegion, passportSeria: $passportSeria, currentOrganizationName: $currentOrganizationName, currentOrganizationId: $currentOrganizationId, region: $region)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthInfoEntityImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.livingRegion, livingRegion) ||
                other.livingRegion == livingRegion) &&
            (identical(other.livingDistrict, livingDistrict) ||
                other.livingDistrict == livingDistrict) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.birthRegion, birthRegion) ||
                other.birthRegion == birthRegion) &&
            (identical(other.passportSeria, passportSeria) ||
                other.passportSeria == passportSeria) &&
            (identical(
                    other.currentOrganizationName, currentOrganizationName) ||
                other.currentOrganizationName == currentOrganizationName) &&
            (identical(other.currentOrganizationId, currentOrganizationId) ||
                other.currentOrganizationId == currentOrganizationId) &&
            (identical(other.region, region) || other.region == region));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userName,
      fullName,
      shortName,
      firstName,
      middleName,
      lastName,
      livingRegion,
      livingDistrict,
      birthDate,
      birthRegion,
      passportSeria,
      currentOrganizationName,
      currentOrganizationId,
      region);

  /// Create a copy of AuthInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthInfoEntityImplCopyWith<_$AuthInfoEntityImpl> get copyWith =>
      __$$AuthInfoEntityImplCopyWithImpl<_$AuthInfoEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthInfoEntityImplToJson(
      this,
    );
  }
}

abstract class _AuthInfoEntity implements AuthInfoEntity {
  const factory _AuthInfoEntity(
      {@HiveField(0) final String? userName,
      @HiveField(1) final String? fullName,
      @HiveField(2) final String? shortName,
      @HiveField(3) final String? firstName,
      @HiveField(4) final String? middleName,
      @HiveField(5) final String? lastName,
      @HiveField(6) final String? livingRegion,
      @HiveField(7) final String? livingDistrict,
      @HiveField(8) final String? birthDate,
      @HiveField(9) final String? birthRegion,
      @HiveField(10) final String? passportSeria,
      @HiveField(11) final String? currentOrganizationName,
      @HiveField(12) final int? currentOrganizationId,
      @HiveField(13) final RegionEntity? region}) = _$AuthInfoEntityImpl;

  factory _AuthInfoEntity.fromJson(Map<String, dynamic> json) =
      _$AuthInfoEntityImpl.fromJson;

  @override
  @HiveField(0)
  String? get userName;
  @override
  @HiveField(1)
  String? get fullName;
  @override
  @HiveField(2)
  String? get shortName;
  @override
  @HiveField(3)
  String? get firstName;
  @override
  @HiveField(4)
  String? get middleName;
  @override
  @HiveField(5)
  String? get lastName;
  @override
  @HiveField(6)
  String? get livingRegion;
  @override
  @HiveField(7)
  String? get livingDistrict;
  @override
  @HiveField(8)
  String? get birthDate;
  @override
  @HiveField(9)
  String? get birthRegion;
  @override
  @HiveField(10)
  String? get passportSeria;
  @override
  @HiveField(11)
  String? get currentOrganizationName;
  @override
  @HiveField(12)
  int? get currentOrganizationId;
  @override
  @HiveField(13)
  RegionEntity? get region;

  /// Create a copy of AuthInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthInfoEntityImplCopyWith<_$AuthInfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
