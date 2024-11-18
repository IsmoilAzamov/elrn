// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reference_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReferenceEntity _$ReferenceEntityFromJson(Map<String, dynamic> json) {
  return _ReferenceEntity.fromJson(json);
}

/// @nodoc
mixin _$ReferenceEntity {
  String? get courseId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get startingDate => throw _privateConstructorUsedError;
  String? get completingDate => throw _privateConstructorUsedError;

  /// Serializes this ReferenceEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferenceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferenceEntityCopyWith<ReferenceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferenceEntityCopyWith<$Res> {
  factory $ReferenceEntityCopyWith(
          ReferenceEntity value, $Res Function(ReferenceEntity) then) =
      _$ReferenceEntityCopyWithImpl<$Res, ReferenceEntity>;
  @useResult
  $Res call(
      {String? courseId,
      String? title,
      String? fullName,
      String? startingDate,
      String? completingDate});
}

/// @nodoc
class _$ReferenceEntityCopyWithImpl<$Res, $Val extends ReferenceEntity>
    implements $ReferenceEntityCopyWith<$Res> {
  _$ReferenceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferenceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = freezed,
    Object? title = freezed,
    Object? fullName = freezed,
    Object? startingDate = freezed,
    Object? completingDate = freezed,
  }) {
    return _then(_value.copyWith(
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      startingDate: freezed == startingDate
          ? _value.startingDate
          : startingDate // ignore: cast_nullable_to_non_nullable
              as String?,
      completingDate: freezed == completingDate
          ? _value.completingDate
          : completingDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferenceEntityImplCopyWith<$Res>
    implements $ReferenceEntityCopyWith<$Res> {
  factory _$$ReferenceEntityImplCopyWith(_$ReferenceEntityImpl value,
          $Res Function(_$ReferenceEntityImpl) then) =
      __$$ReferenceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? courseId,
      String? title,
      String? fullName,
      String? startingDate,
      String? completingDate});
}

/// @nodoc
class __$$ReferenceEntityImplCopyWithImpl<$Res>
    extends _$ReferenceEntityCopyWithImpl<$Res, _$ReferenceEntityImpl>
    implements _$$ReferenceEntityImplCopyWith<$Res> {
  __$$ReferenceEntityImplCopyWithImpl(
      _$ReferenceEntityImpl _value, $Res Function(_$ReferenceEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferenceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = freezed,
    Object? title = freezed,
    Object? fullName = freezed,
    Object? startingDate = freezed,
    Object? completingDate = freezed,
  }) {
    return _then(_$ReferenceEntityImpl(
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      startingDate: freezed == startingDate
          ? _value.startingDate
          : startingDate // ignore: cast_nullable_to_non_nullable
              as String?,
      completingDate: freezed == completingDate
          ? _value.completingDate
          : completingDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferenceEntityImpl implements _ReferenceEntity {
  const _$ReferenceEntityImpl(
      {this.courseId,
      this.title,
      this.fullName,
      this.startingDate,
      this.completingDate});

  factory _$ReferenceEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferenceEntityImplFromJson(json);

  @override
  final String? courseId;
  @override
  final String? title;
  @override
  final String? fullName;
  @override
  final String? startingDate;
  @override
  final String? completingDate;

  @override
  String toString() {
    return 'ReferenceEntity(courseId: $courseId, title: $title, fullName: $fullName, startingDate: $startingDate, completingDate: $completingDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferenceEntityImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.startingDate, startingDate) ||
                other.startingDate == startingDate) &&
            (identical(other.completingDate, completingDate) ||
                other.completingDate == completingDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, courseId, title, fullName, startingDate, completingDate);

  /// Create a copy of ReferenceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferenceEntityImplCopyWith<_$ReferenceEntityImpl> get copyWith =>
      __$$ReferenceEntityImplCopyWithImpl<_$ReferenceEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferenceEntityImplToJson(
      this,
    );
  }
}

abstract class _ReferenceEntity implements ReferenceEntity {
  const factory _ReferenceEntity(
      {final String? courseId,
      final String? title,
      final String? fullName,
      final String? startingDate,
      final String? completingDate}) = _$ReferenceEntityImpl;

  factory _ReferenceEntity.fromJson(Map<String, dynamic> json) =
      _$ReferenceEntityImpl.fromJson;

  @override
  String? get courseId;
  @override
  String? get title;
  @override
  String? get fullName;
  @override
  String? get startingDate;
  @override
  String? get completingDate;

  /// Create a copy of ReferenceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferenceEntityImplCopyWith<_$ReferenceEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
