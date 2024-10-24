// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentEntity _$CommentEntityFromJson(Map<String, dynamic> json) {
  return _CommentEntity.fromJson(json);
}

/// @nodoc
mixin _$CommentEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get documentId => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  int? get adminId => throw _privateConstructorUsedError;
  String? get docOn => throw _privateConstructorUsedError;
  String? get messageText => throw _privateConstructorUsedError;
  int? get repliedMessageId => throw _privateConstructorUsedError;

  /// Serializes this CommentEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentEntityCopyWith<CommentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentEntityCopyWith<$Res> {
  factory $CommentEntityCopyWith(
          CommentEntity value, $Res Function(CommentEntity) then) =
      _$CommentEntityCopyWithImpl<$Res, CommentEntity>;
  @useResult
  $Res call(
      {int? id,
      String? documentId,
      int? userId,
      int? adminId,
      String? docOn,
      String? messageText,
      int? repliedMessageId});
}

/// @nodoc
class _$CommentEntityCopyWithImpl<$Res, $Val extends CommentEntity>
    implements $CommentEntityCopyWith<$Res> {
  _$CommentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? documentId = freezed,
    Object? userId = freezed,
    Object? adminId = freezed,
    Object? docOn = freezed,
    Object? messageText = freezed,
    Object? repliedMessageId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      documentId: freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      adminId: freezed == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as int?,
      docOn: freezed == docOn
          ? _value.docOn
          : docOn // ignore: cast_nullable_to_non_nullable
              as String?,
      messageText: freezed == messageText
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as String?,
      repliedMessageId: freezed == repliedMessageId
          ? _value.repliedMessageId
          : repliedMessageId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentEntityImplCopyWith<$Res>
    implements $CommentEntityCopyWith<$Res> {
  factory _$$CommentEntityImplCopyWith(
          _$CommentEntityImpl value, $Res Function(_$CommentEntityImpl) then) =
      __$$CommentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? documentId,
      int? userId,
      int? adminId,
      String? docOn,
      String? messageText,
      int? repliedMessageId});
}

/// @nodoc
class __$$CommentEntityImplCopyWithImpl<$Res>
    extends _$CommentEntityCopyWithImpl<$Res, _$CommentEntityImpl>
    implements _$$CommentEntityImplCopyWith<$Res> {
  __$$CommentEntityImplCopyWithImpl(
      _$CommentEntityImpl _value, $Res Function(_$CommentEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? documentId = freezed,
    Object? userId = freezed,
    Object? adminId = freezed,
    Object? docOn = freezed,
    Object? messageText = freezed,
    Object? repliedMessageId = freezed,
  }) {
    return _then(_$CommentEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      documentId: freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      adminId: freezed == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as int?,
      docOn: freezed == docOn
          ? _value.docOn
          : docOn // ignore: cast_nullable_to_non_nullable
              as String?,
      messageText: freezed == messageText
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as String?,
      repliedMessageId: freezed == repliedMessageId
          ? _value.repliedMessageId
          : repliedMessageId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentEntityImpl implements _CommentEntity {
  _$CommentEntityImpl(
      {this.id,
      this.documentId,
      this.userId,
      this.adminId,
      this.docOn,
      this.messageText,
      this.repliedMessageId});

  factory _$CommentEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentEntityImplFromJson(json);

  @override
  final int? id;
  @override
  final String? documentId;
  @override
  final int? userId;
  @override
  final int? adminId;
  @override
  final String? docOn;
  @override
  final String? messageText;
  @override
  final int? repliedMessageId;

  @override
  String toString() {
    return 'CommentEntity(id: $id, documentId: $documentId, userId: $userId, adminId: $adminId, docOn: $docOn, messageText: $messageText, repliedMessageId: $repliedMessageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.adminId, adminId) || other.adminId == adminId) &&
            (identical(other.docOn, docOn) || other.docOn == docOn) &&
            (identical(other.messageText, messageText) ||
                other.messageText == messageText) &&
            (identical(other.repliedMessageId, repliedMessageId) ||
                other.repliedMessageId == repliedMessageId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, documentId, userId, adminId,
      docOn, messageText, repliedMessageId);

  /// Create a copy of CommentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentEntityImplCopyWith<_$CommentEntityImpl> get copyWith =>
      __$$CommentEntityImplCopyWithImpl<_$CommentEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentEntityImplToJson(
      this,
    );
  }
}

abstract class _CommentEntity implements CommentEntity {
  factory _CommentEntity(
      {final int? id,
      final String? documentId,
      final int? userId,
      final int? adminId,
      final String? docOn,
      final String? messageText,
      final int? repliedMessageId}) = _$CommentEntityImpl;

  factory _CommentEntity.fromJson(Map<String, dynamic> json) =
      _$CommentEntityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get documentId;
  @override
  int? get userId;
  @override
  int? get adminId;
  @override
  String? get docOn;
  @override
  String? get messageText;
  @override
  int? get repliedMessageId;

  /// Create a copy of CommentEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentEntityImplCopyWith<_$CommentEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
