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
  String? get userName => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get shortName => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get middleName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get livingRegion => throw _privateConstructorUsedError;
  String? get livingDistrict => throw _privateConstructorUsedError;
  String? get birthDate => throw _privateConstructorUsedError;
  String? get birthRegion => throw _privateConstructorUsedError;
  String? get passportSeria => throw _privateConstructorUsedError;
  String? get currentOrganizationName => throw _privateConstructorUsedError;
  int? get currentOrganizationId => throw _privateConstructorUsedError;
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
      {String? userName,
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
      RegionEntity? region});

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
      {String? userName,
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
      RegionEntity? region});

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
      {this.userName,
      this.fullName,
      this.shortName,
      this.firstName,
      this.middleName,
      this.lastName,
      this.livingRegion,
      this.livingDistrict,
      this.birthDate,
      this.birthRegion,
      this.passportSeria,
      this.currentOrganizationName,
      this.currentOrganizationId,
      this.region});

  factory _$AuthInfoEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthInfoEntityImplFromJson(json);

  @override
  final String? userName;
  @override
  final String? fullName;
  @override
  final String? shortName;
  @override
  final String? firstName;
  @override
  final String? middleName;
  @override
  final String? lastName;
  @override
  final String? livingRegion;
  @override
  final String? livingDistrict;
  @override
  final String? birthDate;
  @override
  final String? birthRegion;
  @override
  final String? passportSeria;
  @override
  final String? currentOrganizationName;
  @override
  final int? currentOrganizationId;
  @override
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
      {final String? userName,
      final String? fullName,
      final String? shortName,
      final String? firstName,
      final String? middleName,
      final String? lastName,
      final String? livingRegion,
      final String? livingDistrict,
      final String? birthDate,
      final String? birthRegion,
      final String? passportSeria,
      final String? currentOrganizationName,
      final int? currentOrganizationId,
      final RegionEntity? region}) = _$AuthInfoEntityImpl;

  factory _AuthInfoEntity.fromJson(Map<String, dynamic> json) =
      _$AuthInfoEntityImpl.fromJson;

  @override
  String? get userName;
  @override
  String? get fullName;
  @override
  String? get shortName;
  @override
  String? get firstName;
  @override
  String? get middleName;
  @override
  String? get lastName;
  @override
  String? get livingRegion;
  @override
  String? get livingDistrict;
  @override
  String? get birthDate;
  @override
  String? get birthRegion;
  @override
  String? get passportSeria;
  @override
  String? get currentOrganizationName;
  @override
  int? get currentOrganizationId;
  @override
  RegionEntity? get region;

  /// Create a copy of AuthInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthInfoEntityImplCopyWith<_$AuthInfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
