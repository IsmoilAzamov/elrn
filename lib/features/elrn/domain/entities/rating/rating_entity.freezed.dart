// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RatingEntity _$RatingEntityFromJson(Map<String, dynamic> json) {
  return _RatingEntity.fromJson(json);
}

/// @nodoc
mixin _$RatingEntity {
  int? get id => throw _privateConstructorUsedError;
  int? get ratingId => throw _privateConstructorUsedError;
  String? get documentId => throw _privateConstructorUsedError;
  int? get lessonTypeId => throw _privateConstructorUsedError;
  int? get statusId => throw _privateConstructorUsedError;

  /// Serializes this RatingEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RatingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RatingEntityCopyWith<RatingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingEntityCopyWith<$Res> {
  factory $RatingEntityCopyWith(
          RatingEntity value, $Res Function(RatingEntity) then) =
      _$RatingEntityCopyWithImpl<$Res, RatingEntity>;
  @useResult
  $Res call(
      {int? id,
      int? ratingId,
      String? documentId,
      int? lessonTypeId,
      int? statusId});
}

/// @nodoc
class _$RatingEntityCopyWithImpl<$Res, $Val extends RatingEntity>
    implements $RatingEntityCopyWith<$Res> {
  _$RatingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RatingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ratingId = freezed,
    Object? documentId = freezed,
    Object? lessonTypeId = freezed,
    Object? statusId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingId: freezed == ratingId
          ? _value.ratingId
          : ratingId // ignore: cast_nullable_to_non_nullable
              as int?,
      documentId: freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonTypeId: freezed == lessonTypeId
          ? _value.lessonTypeId
          : lessonTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      statusId: freezed == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingEntityImplCopyWith<$Res>
    implements $RatingEntityCopyWith<$Res> {
  factory _$$RatingEntityImplCopyWith(
          _$RatingEntityImpl value, $Res Function(_$RatingEntityImpl) then) =
      __$$RatingEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? ratingId,
      String? documentId,
      int? lessonTypeId,
      int? statusId});
}

/// @nodoc
class __$$RatingEntityImplCopyWithImpl<$Res>
    extends _$RatingEntityCopyWithImpl<$Res, _$RatingEntityImpl>
    implements _$$RatingEntityImplCopyWith<$Res> {
  __$$RatingEntityImplCopyWithImpl(
      _$RatingEntityImpl _value, $Res Function(_$RatingEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RatingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ratingId = freezed,
    Object? documentId = freezed,
    Object? lessonTypeId = freezed,
    Object? statusId = freezed,
  }) {
    return _then(_$RatingEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingId: freezed == ratingId
          ? _value.ratingId
          : ratingId // ignore: cast_nullable_to_non_nullable
              as int?,
      documentId: freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonTypeId: freezed == lessonTypeId
          ? _value.lessonTypeId
          : lessonTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      statusId: freezed == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingEntityImpl implements _RatingEntity {
  const _$RatingEntityImpl(
      {this.id,
      this.ratingId,
      this.documentId,
      this.lessonTypeId,
      this.statusId});

  factory _$RatingEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingEntityImplFromJson(json);

  @override
  final int? id;
  @override
  final int? ratingId;
  @override
  final String? documentId;
  @override
  final int? lessonTypeId;
  @override
  final int? statusId;

  @override
  String toString() {
    return 'RatingEntity(id: $id, ratingId: $ratingId, documentId: $documentId, lessonTypeId: $lessonTypeId, statusId: $statusId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ratingId, ratingId) ||
                other.ratingId == ratingId) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.lessonTypeId, lessonTypeId) ||
                other.lessonTypeId == lessonTypeId) &&
            (identical(other.statusId, statusId) ||
                other.statusId == statusId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, ratingId, documentId, lessonTypeId, statusId);

  /// Create a copy of RatingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingEntityImplCopyWith<_$RatingEntityImpl> get copyWith =>
      __$$RatingEntityImplCopyWithImpl<_$RatingEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingEntityImplToJson(
      this,
    );
  }
}

abstract class _RatingEntity implements RatingEntity {
  const factory _RatingEntity(
      {final int? id,
      final int? ratingId,
      final String? documentId,
      final int? lessonTypeId,
      final int? statusId}) = _$RatingEntityImpl;

  factory _RatingEntity.fromJson(Map<String, dynamic> json) =
      _$RatingEntityImpl.fromJson;

  @override
  int? get id;
  @override
  int? get ratingId;
  @override
  String? get documentId;
  @override
  int? get lessonTypeId;
  @override
  int? get statusId;

  /// Create a copy of RatingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatingEntityImplCopyWith<_$RatingEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
