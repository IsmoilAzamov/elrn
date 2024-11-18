// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'certificate_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CertificateEntity _$CertificateEntityFromJson(Map<String, dynamic> json) {
  return _CertificateEntity.fromJson(json);
}

/// @nodoc
mixin _$CertificateEntity {
  String? get certificateFileId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get fileExtension => throw _privateConstructorUsedError;
  double? get submissionLimit => throw _privateConstructorUsedError;
  String? get lessonTitle => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this CertificateEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CertificateEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CertificateEntityCopyWith<CertificateEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificateEntityCopyWith<$Res> {
  factory $CertificateEntityCopyWith(
          CertificateEntity value, $Res Function(CertificateEntity) then) =
      _$CertificateEntityCopyWithImpl<$Res, CertificateEntity>;
  @useResult
  $Res call(
      {String? certificateFileId,
      String? title,
      String? fileExtension,
      double? submissionLimit,
      String? lessonTitle,
      String? createdAt});
}

/// @nodoc
class _$CertificateEntityCopyWithImpl<$Res, $Val extends CertificateEntity>
    implements $CertificateEntityCopyWith<$Res> {
  _$CertificateEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CertificateEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certificateFileId = freezed,
    Object? title = freezed,
    Object? fileExtension = freezed,
    Object? submissionLimit = freezed,
    Object? lessonTitle = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      certificateFileId: freezed == certificateFileId
          ? _value.certificateFileId
          : certificateFileId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      fileExtension: freezed == fileExtension
          ? _value.fileExtension
          : fileExtension // ignore: cast_nullable_to_non_nullable
              as String?,
      submissionLimit: freezed == submissionLimit
          ? _value.submissionLimit
          : submissionLimit // ignore: cast_nullable_to_non_nullable
              as double?,
      lessonTitle: freezed == lessonTitle
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CertificateEntityImplCopyWith<$Res>
    implements $CertificateEntityCopyWith<$Res> {
  factory _$$CertificateEntityImplCopyWith(_$CertificateEntityImpl value,
          $Res Function(_$CertificateEntityImpl) then) =
      __$$CertificateEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? certificateFileId,
      String? title,
      String? fileExtension,
      double? submissionLimit,
      String? lessonTitle,
      String? createdAt});
}

/// @nodoc
class __$$CertificateEntityImplCopyWithImpl<$Res>
    extends _$CertificateEntityCopyWithImpl<$Res, _$CertificateEntityImpl>
    implements _$$CertificateEntityImplCopyWith<$Res> {
  __$$CertificateEntityImplCopyWithImpl(_$CertificateEntityImpl _value,
      $Res Function(_$CertificateEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CertificateEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certificateFileId = freezed,
    Object? title = freezed,
    Object? fileExtension = freezed,
    Object? submissionLimit = freezed,
    Object? lessonTitle = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$CertificateEntityImpl(
      certificateFileId: freezed == certificateFileId
          ? _value.certificateFileId
          : certificateFileId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      fileExtension: freezed == fileExtension
          ? _value.fileExtension
          : fileExtension // ignore: cast_nullable_to_non_nullable
              as String?,
      submissionLimit: freezed == submissionLimit
          ? _value.submissionLimit
          : submissionLimit // ignore: cast_nullable_to_non_nullable
              as double?,
      lessonTitle: freezed == lessonTitle
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CertificateEntityImpl implements _CertificateEntity {
  const _$CertificateEntityImpl(
      {this.certificateFileId,
      this.title,
      this.fileExtension,
      this.submissionLimit,
      this.lessonTitle,
      this.createdAt});

  factory _$CertificateEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CertificateEntityImplFromJson(json);

  @override
  final String? certificateFileId;
  @override
  final String? title;
  @override
  final String? fileExtension;
  @override
  final double? submissionLimit;
  @override
  final String? lessonTitle;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'CertificateEntity(certificateFileId: $certificateFileId, title: $title, fileExtension: $fileExtension, submissionLimit: $submissionLimit, lessonTitle: $lessonTitle, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CertificateEntityImpl &&
            (identical(other.certificateFileId, certificateFileId) ||
                other.certificateFileId == certificateFileId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.fileExtension, fileExtension) ||
                other.fileExtension == fileExtension) &&
            (identical(other.submissionLimit, submissionLimit) ||
                other.submissionLimit == submissionLimit) &&
            (identical(other.lessonTitle, lessonTitle) ||
                other.lessonTitle == lessonTitle) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, certificateFileId, title,
      fileExtension, submissionLimit, lessonTitle, createdAt);

  /// Create a copy of CertificateEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CertificateEntityImplCopyWith<_$CertificateEntityImpl> get copyWith =>
      __$$CertificateEntityImplCopyWithImpl<_$CertificateEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CertificateEntityImplToJson(
      this,
    );
  }
}

abstract class _CertificateEntity implements CertificateEntity {
  const factory _CertificateEntity(
      {final String? certificateFileId,
      final String? title,
      final String? fileExtension,
      final double? submissionLimit,
      final String? lessonTitle,
      final String? createdAt}) = _$CertificateEntityImpl;

  factory _CertificateEntity.fromJson(Map<String, dynamic> json) =
      _$CertificateEntityImpl.fromJson;

  @override
  String? get certificateFileId;
  @override
  String? get title;
  @override
  String? get fileExtension;
  @override
  double? get submissionLimit;
  @override
  String? get lessonTitle;
  @override
  String? get createdAt;

  /// Create a copy of CertificateEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CertificateEntityImplCopyWith<_$CertificateEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
