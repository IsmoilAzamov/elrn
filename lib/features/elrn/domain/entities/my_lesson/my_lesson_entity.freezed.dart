// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_lesson_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyLessonEntity _$MyLessonEntityFromJson(Map<String, dynamic> json) {
  return _MyLessonEntity.fromJson(json);
}

/// @nodoc
mixin _$MyLessonEntity {
  String? get courseTitle => throw _privateConstructorUsedError;
  String? get iconFileId => throw _privateConstructorUsedError;
  List<MyLessonTopicEntity> get topics => throw _privateConstructorUsedError;

  /// Serializes this MyLessonEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyLessonEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyLessonEntityCopyWith<MyLessonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyLessonEntityCopyWith<$Res> {
  factory $MyLessonEntityCopyWith(
          MyLessonEntity value, $Res Function(MyLessonEntity) then) =
      _$MyLessonEntityCopyWithImpl<$Res, MyLessonEntity>;
  @useResult
  $Res call(
      {String? courseTitle,
      String? iconFileId,
      List<MyLessonTopicEntity> topics});
}

/// @nodoc
class _$MyLessonEntityCopyWithImpl<$Res, $Val extends MyLessonEntity>
    implements $MyLessonEntityCopyWith<$Res> {
  _$MyLessonEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyLessonEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseTitle = freezed,
    Object? iconFileId = freezed,
    Object? topics = null,
  }) {
    return _then(_value.copyWith(
      courseTitle: freezed == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      iconFileId: freezed == iconFileId
          ? _value.iconFileId
          : iconFileId // ignore: cast_nullable_to_non_nullable
              as String?,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<MyLessonTopicEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyLessonEntityImplCopyWith<$Res>
    implements $MyLessonEntityCopyWith<$Res> {
  factory _$$MyLessonEntityImplCopyWith(_$MyLessonEntityImpl value,
          $Res Function(_$MyLessonEntityImpl) then) =
      __$$MyLessonEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? courseTitle,
      String? iconFileId,
      List<MyLessonTopicEntity> topics});
}

/// @nodoc
class __$$MyLessonEntityImplCopyWithImpl<$Res>
    extends _$MyLessonEntityCopyWithImpl<$Res, _$MyLessonEntityImpl>
    implements _$$MyLessonEntityImplCopyWith<$Res> {
  __$$MyLessonEntityImplCopyWithImpl(
      _$MyLessonEntityImpl _value, $Res Function(_$MyLessonEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyLessonEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseTitle = freezed,
    Object? iconFileId = freezed,
    Object? topics = null,
  }) {
    return _then(_$MyLessonEntityImpl(
      courseTitle: freezed == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      iconFileId: freezed == iconFileId
          ? _value.iconFileId
          : iconFileId // ignore: cast_nullable_to_non_nullable
              as String?,
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<MyLessonTopicEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyLessonEntityImpl implements _MyLessonEntity {
  const _$MyLessonEntityImpl(
      {required this.courseTitle,
      required this.iconFileId,
      required final List<MyLessonTopicEntity> topics})
      : _topics = topics;

  factory _$MyLessonEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyLessonEntityImplFromJson(json);

  @override
  final String? courseTitle;
  @override
  final String? iconFileId;
  final List<MyLessonTopicEntity> _topics;
  @override
  List<MyLessonTopicEntity> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  String toString() {
    return 'MyLessonEntity(courseTitle: $courseTitle, iconFileId: $iconFileId, topics: $topics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyLessonEntityImpl &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.iconFileId, iconFileId) ||
                other.iconFileId == iconFileId) &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, courseTitle, iconFileId,
      const DeepCollectionEquality().hash(_topics));

  /// Create a copy of MyLessonEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyLessonEntityImplCopyWith<_$MyLessonEntityImpl> get copyWith =>
      __$$MyLessonEntityImplCopyWithImpl<_$MyLessonEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyLessonEntityImplToJson(
      this,
    );
  }
}

abstract class _MyLessonEntity implements MyLessonEntity {
  const factory _MyLessonEntity(
      {required final String? courseTitle,
      required final String? iconFileId,
      required final List<MyLessonTopicEntity> topics}) = _$MyLessonEntityImpl;

  factory _MyLessonEntity.fromJson(Map<String, dynamic> json) =
      _$MyLessonEntityImpl.fromJson;

  @override
  String? get courseTitle;
  @override
  String? get iconFileId;
  @override
  List<MyLessonTopicEntity> get topics;

  /// Create a copy of MyLessonEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyLessonEntityImplCopyWith<_$MyLessonEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyLessonTopicEntity _$MyLessonTopicEntityFromJson(Map<String, dynamic> json) {
  return _MyLessonTopicEntity.fromJson(json);
}

/// @nodoc
mixin _$MyLessonTopicEntity {
  String? get courseTopic => throw _privateConstructorUsedError;
  String? get courseTopicId => throw _privateConstructorUsedError;
  List<MyLessonTopicChildEntity>? get childTopics =>
      throw _privateConstructorUsedError;

  /// Serializes this MyLessonTopicEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyLessonTopicEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyLessonTopicEntityCopyWith<MyLessonTopicEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyLessonTopicEntityCopyWith<$Res> {
  factory $MyLessonTopicEntityCopyWith(
          MyLessonTopicEntity value, $Res Function(MyLessonTopicEntity) then) =
      _$MyLessonTopicEntityCopyWithImpl<$Res, MyLessonTopicEntity>;
  @useResult
  $Res call(
      {String? courseTopic,
      String? courseTopicId,
      List<MyLessonTopicChildEntity>? childTopics});
}

/// @nodoc
class _$MyLessonTopicEntityCopyWithImpl<$Res, $Val extends MyLessonTopicEntity>
    implements $MyLessonTopicEntityCopyWith<$Res> {
  _$MyLessonTopicEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyLessonTopicEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseTopic = freezed,
    Object? courseTopicId = freezed,
    Object? childTopics = freezed,
  }) {
    return _then(_value.copyWith(
      courseTopic: freezed == courseTopic
          ? _value.courseTopic
          : courseTopic // ignore: cast_nullable_to_non_nullable
              as String?,
      courseTopicId: freezed == courseTopicId
          ? _value.courseTopicId
          : courseTopicId // ignore: cast_nullable_to_non_nullable
              as String?,
      childTopics: freezed == childTopics
          ? _value.childTopics
          : childTopics // ignore: cast_nullable_to_non_nullable
              as List<MyLessonTopicChildEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyLessonTopicEntityImplCopyWith<$Res>
    implements $MyLessonTopicEntityCopyWith<$Res> {
  factory _$$MyLessonTopicEntityImplCopyWith(_$MyLessonTopicEntityImpl value,
          $Res Function(_$MyLessonTopicEntityImpl) then) =
      __$$MyLessonTopicEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? courseTopic,
      String? courseTopicId,
      List<MyLessonTopicChildEntity>? childTopics});
}

/// @nodoc
class __$$MyLessonTopicEntityImplCopyWithImpl<$Res>
    extends _$MyLessonTopicEntityCopyWithImpl<$Res, _$MyLessonTopicEntityImpl>
    implements _$$MyLessonTopicEntityImplCopyWith<$Res> {
  __$$MyLessonTopicEntityImplCopyWithImpl(_$MyLessonTopicEntityImpl _value,
      $Res Function(_$MyLessonTopicEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyLessonTopicEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseTopic = freezed,
    Object? courseTopicId = freezed,
    Object? childTopics = freezed,
  }) {
    return _then(_$MyLessonTopicEntityImpl(
      courseTopic: freezed == courseTopic
          ? _value.courseTopic
          : courseTopic // ignore: cast_nullable_to_non_nullable
              as String?,
      courseTopicId: freezed == courseTopicId
          ? _value.courseTopicId
          : courseTopicId // ignore: cast_nullable_to_non_nullable
              as String?,
      childTopics: freezed == childTopics
          ? _value._childTopics
          : childTopics // ignore: cast_nullable_to_non_nullable
              as List<MyLessonTopicChildEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyLessonTopicEntityImpl implements _MyLessonTopicEntity {
  const _$MyLessonTopicEntityImpl(
      {required this.courseTopic,
      required this.courseTopicId,
      required final List<MyLessonTopicChildEntity>? childTopics})
      : _childTopics = childTopics;

  factory _$MyLessonTopicEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyLessonTopicEntityImplFromJson(json);

  @override
  final String? courseTopic;
  @override
  final String? courseTopicId;
  final List<MyLessonTopicChildEntity>? _childTopics;
  @override
  List<MyLessonTopicChildEntity>? get childTopics {
    final value = _childTopics;
    if (value == null) return null;
    if (_childTopics is EqualUnmodifiableListView) return _childTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MyLessonTopicEntity(courseTopic: $courseTopic, courseTopicId: $courseTopicId, childTopics: $childTopics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyLessonTopicEntityImpl &&
            (identical(other.courseTopic, courseTopic) ||
                other.courseTopic == courseTopic) &&
            (identical(other.courseTopicId, courseTopicId) ||
                other.courseTopicId == courseTopicId) &&
            const DeepCollectionEquality()
                .equals(other._childTopics, _childTopics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, courseTopic, courseTopicId,
      const DeepCollectionEquality().hash(_childTopics));

  /// Create a copy of MyLessonTopicEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyLessonTopicEntityImplCopyWith<_$MyLessonTopicEntityImpl> get copyWith =>
      __$$MyLessonTopicEntityImplCopyWithImpl<_$MyLessonTopicEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyLessonTopicEntityImplToJson(
      this,
    );
  }
}

abstract class _MyLessonTopicEntity implements MyLessonTopicEntity {
  const factory _MyLessonTopicEntity(
          {required final String? courseTopic,
          required final String? courseTopicId,
          required final List<MyLessonTopicChildEntity>? childTopics}) =
      _$MyLessonTopicEntityImpl;

  factory _MyLessonTopicEntity.fromJson(Map<String, dynamic> json) =
      _$MyLessonTopicEntityImpl.fromJson;

  @override
  String? get courseTopic;
  @override
  String? get courseTopicId;
  @override
  List<MyLessonTopicChildEntity>? get childTopics;

  /// Create a copy of MyLessonTopicEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyLessonTopicEntityImplCopyWith<_$MyLessonTopicEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyLessonTopicChildEntity _$MyLessonTopicChildEntityFromJson(
    Map<String, dynamic> json) {
  return _MyLessonTopicChildEntity.fromJson(json);
}

/// @nodoc
mixin _$MyLessonTopicChildEntity {
  String? get courseTopic => throw _privateConstructorUsedError;
  String? get courseTopicId => throw _privateConstructorUsedError;
  List<VideoLessonEntity>? get videoLessons =>
      throw _privateConstructorUsedError;
  List<LessonTestEntity>? get lessonTests => throw _privateConstructorUsedError;
  List<String>? get homeworks => throw _privateConstructorUsedError;

  /// Serializes this MyLessonTopicChildEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyLessonTopicChildEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyLessonTopicChildEntityCopyWith<MyLessonTopicChildEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyLessonTopicChildEntityCopyWith<$Res> {
  factory $MyLessonTopicChildEntityCopyWith(MyLessonTopicChildEntity value,
          $Res Function(MyLessonTopicChildEntity) then) =
      _$MyLessonTopicChildEntityCopyWithImpl<$Res, MyLessonTopicChildEntity>;
  @useResult
  $Res call(
      {String? courseTopic,
      String? courseTopicId,
      List<VideoLessonEntity>? videoLessons,
      List<LessonTestEntity>? lessonTests,
      List<String>? homeworks});
}

/// @nodoc
class _$MyLessonTopicChildEntityCopyWithImpl<$Res,
        $Val extends MyLessonTopicChildEntity>
    implements $MyLessonTopicChildEntityCopyWith<$Res> {
  _$MyLessonTopicChildEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyLessonTopicChildEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseTopic = freezed,
    Object? courseTopicId = freezed,
    Object? videoLessons = freezed,
    Object? lessonTests = freezed,
    Object? homeworks = freezed,
  }) {
    return _then(_value.copyWith(
      courseTopic: freezed == courseTopic
          ? _value.courseTopic
          : courseTopic // ignore: cast_nullable_to_non_nullable
              as String?,
      courseTopicId: freezed == courseTopicId
          ? _value.courseTopicId
          : courseTopicId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoLessons: freezed == videoLessons
          ? _value.videoLessons
          : videoLessons // ignore: cast_nullable_to_non_nullable
              as List<VideoLessonEntity>?,
      lessonTests: freezed == lessonTests
          ? _value.lessonTests
          : lessonTests // ignore: cast_nullable_to_non_nullable
              as List<LessonTestEntity>?,
      homeworks: freezed == homeworks
          ? _value.homeworks
          : homeworks // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyLessonTopicChildEntityImplCopyWith<$Res>
    implements $MyLessonTopicChildEntityCopyWith<$Res> {
  factory _$$MyLessonTopicChildEntityImplCopyWith(
          _$MyLessonTopicChildEntityImpl value,
          $Res Function(_$MyLessonTopicChildEntityImpl) then) =
      __$$MyLessonTopicChildEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? courseTopic,
      String? courseTopicId,
      List<VideoLessonEntity>? videoLessons,
      List<LessonTestEntity>? lessonTests,
      List<String>? homeworks});
}

/// @nodoc
class __$$MyLessonTopicChildEntityImplCopyWithImpl<$Res>
    extends _$MyLessonTopicChildEntityCopyWithImpl<$Res,
        _$MyLessonTopicChildEntityImpl>
    implements _$$MyLessonTopicChildEntityImplCopyWith<$Res> {
  __$$MyLessonTopicChildEntityImplCopyWithImpl(
      _$MyLessonTopicChildEntityImpl _value,
      $Res Function(_$MyLessonTopicChildEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyLessonTopicChildEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseTopic = freezed,
    Object? courseTopicId = freezed,
    Object? videoLessons = freezed,
    Object? lessonTests = freezed,
    Object? homeworks = freezed,
  }) {
    return _then(_$MyLessonTopicChildEntityImpl(
      courseTopic: freezed == courseTopic
          ? _value.courseTopic
          : courseTopic // ignore: cast_nullable_to_non_nullable
              as String?,
      courseTopicId: freezed == courseTopicId
          ? _value.courseTopicId
          : courseTopicId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoLessons: freezed == videoLessons
          ? _value._videoLessons
          : videoLessons // ignore: cast_nullable_to_non_nullable
              as List<VideoLessonEntity>?,
      lessonTests: freezed == lessonTests
          ? _value._lessonTests
          : lessonTests // ignore: cast_nullable_to_non_nullable
              as List<LessonTestEntity>?,
      homeworks: freezed == homeworks
          ? _value._homeworks
          : homeworks // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyLessonTopicChildEntityImpl implements _MyLessonTopicChildEntity {
  const _$MyLessonTopicChildEntityImpl(
      {required this.courseTopic,
      required this.courseTopicId,
      required final List<VideoLessonEntity>? videoLessons,
      required final List<LessonTestEntity>? lessonTests,
      required final List<String>? homeworks})
      : _videoLessons = videoLessons,
        _lessonTests = lessonTests,
        _homeworks = homeworks;

  factory _$MyLessonTopicChildEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyLessonTopicChildEntityImplFromJson(json);

  @override
  final String? courseTopic;
  @override
  final String? courseTopicId;
  final List<VideoLessonEntity>? _videoLessons;
  @override
  List<VideoLessonEntity>? get videoLessons {
    final value = _videoLessons;
    if (value == null) return null;
    if (_videoLessons is EqualUnmodifiableListView) return _videoLessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LessonTestEntity>? _lessonTests;
  @override
  List<LessonTestEntity>? get lessonTests {
    final value = _lessonTests;
    if (value == null) return null;
    if (_lessonTests is EqualUnmodifiableListView) return _lessonTests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _homeworks;
  @override
  List<String>? get homeworks {
    final value = _homeworks;
    if (value == null) return null;
    if (_homeworks is EqualUnmodifiableListView) return _homeworks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MyLessonTopicChildEntity(courseTopic: $courseTopic, courseTopicId: $courseTopicId, videoLessons: $videoLessons, lessonTests: $lessonTests, homeworks: $homeworks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyLessonTopicChildEntityImpl &&
            (identical(other.courseTopic, courseTopic) ||
                other.courseTopic == courseTopic) &&
            (identical(other.courseTopicId, courseTopicId) ||
                other.courseTopicId == courseTopicId) &&
            const DeepCollectionEquality()
                .equals(other._videoLessons, _videoLessons) &&
            const DeepCollectionEquality()
                .equals(other._lessonTests, _lessonTests) &&
            const DeepCollectionEquality()
                .equals(other._homeworks, _homeworks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      courseTopic,
      courseTopicId,
      const DeepCollectionEquality().hash(_videoLessons),
      const DeepCollectionEquality().hash(_lessonTests),
      const DeepCollectionEquality().hash(_homeworks));

  /// Create a copy of MyLessonTopicChildEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyLessonTopicChildEntityImplCopyWith<_$MyLessonTopicChildEntityImpl>
      get copyWith => __$$MyLessonTopicChildEntityImplCopyWithImpl<
          _$MyLessonTopicChildEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyLessonTopicChildEntityImplToJson(
      this,
    );
  }
}

abstract class _MyLessonTopicChildEntity implements MyLessonTopicChildEntity {
  const factory _MyLessonTopicChildEntity(
      {required final String? courseTopic,
      required final String? courseTopicId,
      required final List<VideoLessonEntity>? videoLessons,
      required final List<LessonTestEntity>? lessonTests,
      required final List<String>? homeworks}) = _$MyLessonTopicChildEntityImpl;

  factory _MyLessonTopicChildEntity.fromJson(Map<String, dynamic> json) =
      _$MyLessonTopicChildEntityImpl.fromJson;

  @override
  String? get courseTopic;
  @override
  String? get courseTopicId;
  @override
  List<VideoLessonEntity>? get videoLessons;
  @override
  List<LessonTestEntity>? get lessonTests;
  @override
  List<String>? get homeworks;

  /// Create a copy of MyLessonTopicChildEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyLessonTopicChildEntityImplCopyWith<_$MyLessonTopicChildEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VideoLessonEntity _$VideoLessonEntityFromJson(Map<String, dynamic> json) {
  return _VideoLessonEntity.fromJson(json);
}

/// @nodoc
mixin _$VideoLessonEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get orderNumber => throw _privateConstructorUsedError;
  int? get lessonTypeId => throw _privateConstructorUsedError;
  String? get lessonType => throw _privateConstructorUsedError;
  double? get watchedDuration => throw _privateConstructorUsedError;
  double? get videoDuration => throw _privateConstructorUsedError;
  bool? get locked => throw _privateConstructorUsedError;
  double? get completionPercentage => throw _privateConstructorUsedError;
  String? get videoThumbnailId => throw _privateConstructorUsedError;
  bool? get isVideoClip => throw _privateConstructorUsedError;

  /// Serializes this VideoLessonEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoLessonEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoLessonEntityCopyWith<VideoLessonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoLessonEntityCopyWith<$Res> {
  factory $VideoLessonEntityCopyWith(
          VideoLessonEntity value, $Res Function(VideoLessonEntity) then) =
      _$VideoLessonEntityCopyWithImpl<$Res, VideoLessonEntity>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      int? orderNumber,
      int? lessonTypeId,
      String? lessonType,
      double? watchedDuration,
      double? videoDuration,
      bool? locked,
      double? completionPercentage,
      String? videoThumbnailId,
      bool? isVideoClip});
}

/// @nodoc
class _$VideoLessonEntityCopyWithImpl<$Res, $Val extends VideoLessonEntity>
    implements $VideoLessonEntityCopyWith<$Res> {
  _$VideoLessonEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoLessonEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? orderNumber = freezed,
    Object? lessonTypeId = freezed,
    Object? lessonType = freezed,
    Object? watchedDuration = freezed,
    Object? videoDuration = freezed,
    Object? locked = freezed,
    Object? completionPercentage = freezed,
    Object? videoThumbnailId = freezed,
    Object? isVideoClip = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      lessonTypeId: freezed == lessonTypeId
          ? _value.lessonTypeId
          : lessonTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      lessonType: freezed == lessonType
          ? _value.lessonType
          : lessonType // ignore: cast_nullable_to_non_nullable
              as String?,
      watchedDuration: freezed == watchedDuration
          ? _value.watchedDuration
          : watchedDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      videoDuration: freezed == videoDuration
          ? _value.videoDuration
          : videoDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      locked: freezed == locked
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool?,
      completionPercentage: freezed == completionPercentage
          ? _value.completionPercentage
          : completionPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      videoThumbnailId: freezed == videoThumbnailId
          ? _value.videoThumbnailId
          : videoThumbnailId // ignore: cast_nullable_to_non_nullable
              as String?,
      isVideoClip: freezed == isVideoClip
          ? _value.isVideoClip
          : isVideoClip // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoLessonEntityImplCopyWith<$Res>
    implements $VideoLessonEntityCopyWith<$Res> {
  factory _$$VideoLessonEntityImplCopyWith(_$VideoLessonEntityImpl value,
          $Res Function(_$VideoLessonEntityImpl) then) =
      __$$VideoLessonEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      int? orderNumber,
      int? lessonTypeId,
      String? lessonType,
      double? watchedDuration,
      double? videoDuration,
      bool? locked,
      double? completionPercentage,
      String? videoThumbnailId,
      bool? isVideoClip});
}

/// @nodoc
class __$$VideoLessonEntityImplCopyWithImpl<$Res>
    extends _$VideoLessonEntityCopyWithImpl<$Res, _$VideoLessonEntityImpl>
    implements _$$VideoLessonEntityImplCopyWith<$Res> {
  __$$VideoLessonEntityImplCopyWithImpl(_$VideoLessonEntityImpl _value,
      $Res Function(_$VideoLessonEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoLessonEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? orderNumber = freezed,
    Object? lessonTypeId = freezed,
    Object? lessonType = freezed,
    Object? watchedDuration = freezed,
    Object? videoDuration = freezed,
    Object? locked = freezed,
    Object? completionPercentage = freezed,
    Object? videoThumbnailId = freezed,
    Object? isVideoClip = freezed,
  }) {
    return _then(_$VideoLessonEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      lessonTypeId: freezed == lessonTypeId
          ? _value.lessonTypeId
          : lessonTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      lessonType: freezed == lessonType
          ? _value.lessonType
          : lessonType // ignore: cast_nullable_to_non_nullable
              as String?,
      watchedDuration: freezed == watchedDuration
          ? _value.watchedDuration
          : watchedDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      videoDuration: freezed == videoDuration
          ? _value.videoDuration
          : videoDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      locked: freezed == locked
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool?,
      completionPercentage: freezed == completionPercentage
          ? _value.completionPercentage
          : completionPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      videoThumbnailId: freezed == videoThumbnailId
          ? _value.videoThumbnailId
          : videoThumbnailId // ignore: cast_nullable_to_non_nullable
              as String?,
      isVideoClip: freezed == isVideoClip
          ? _value.isVideoClip
          : isVideoClip // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoLessonEntityImpl implements _VideoLessonEntity {
  const _$VideoLessonEntityImpl(
      {required this.id,
      required this.title,
      required this.orderNumber,
      required this.lessonTypeId,
      required this.lessonType,
      required this.watchedDuration,
      required this.videoDuration,
      required this.locked,
      required this.completionPercentage,
      required this.videoThumbnailId,
      required this.isVideoClip});

  factory _$VideoLessonEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoLessonEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final int? orderNumber;
  @override
  final int? lessonTypeId;
  @override
  final String? lessonType;
  @override
  final double? watchedDuration;
  @override
  final double? videoDuration;
  @override
  final bool? locked;
  @override
  final double? completionPercentage;
  @override
  final String? videoThumbnailId;
  @override
  final bool? isVideoClip;

  @override
  String toString() {
    return 'VideoLessonEntity(id: $id, title: $title, orderNumber: $orderNumber, lessonTypeId: $lessonTypeId, lessonType: $lessonType, watchedDuration: $watchedDuration, videoDuration: $videoDuration, locked: $locked, completionPercentage: $completionPercentage, videoThumbnailId: $videoThumbnailId, isVideoClip: $isVideoClip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoLessonEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.lessonTypeId, lessonTypeId) ||
                other.lessonTypeId == lessonTypeId) &&
            (identical(other.lessonType, lessonType) ||
                other.lessonType == lessonType) &&
            (identical(other.watchedDuration, watchedDuration) ||
                other.watchedDuration == watchedDuration) &&
            (identical(other.videoDuration, videoDuration) ||
                other.videoDuration == videoDuration) &&
            (identical(other.locked, locked) || other.locked == locked) &&
            (identical(other.completionPercentage, completionPercentage) ||
                other.completionPercentage == completionPercentage) &&
            (identical(other.videoThumbnailId, videoThumbnailId) ||
                other.videoThumbnailId == videoThumbnailId) &&
            (identical(other.isVideoClip, isVideoClip) ||
                other.isVideoClip == isVideoClip));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      orderNumber,
      lessonTypeId,
      lessonType,
      watchedDuration,
      videoDuration,
      locked,
      completionPercentage,
      videoThumbnailId,
      isVideoClip);

  /// Create a copy of VideoLessonEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoLessonEntityImplCopyWith<_$VideoLessonEntityImpl> get copyWith =>
      __$$VideoLessonEntityImplCopyWithImpl<_$VideoLessonEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoLessonEntityImplToJson(
      this,
    );
  }
}

abstract class _VideoLessonEntity implements VideoLessonEntity {
  const factory _VideoLessonEntity(
      {required final String? id,
      required final String? title,
      required final int? orderNumber,
      required final int? lessonTypeId,
      required final String? lessonType,
      required final double? watchedDuration,
      required final double? videoDuration,
      required final bool? locked,
      required final double? completionPercentage,
      required final String? videoThumbnailId,
      required final bool? isVideoClip}) = _$VideoLessonEntityImpl;

  factory _VideoLessonEntity.fromJson(Map<String, dynamic> json) =
      _$VideoLessonEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  int? get orderNumber;
  @override
  int? get lessonTypeId;
  @override
  String? get lessonType;
  @override
  double? get watchedDuration;
  @override
  double? get videoDuration;
  @override
  bool? get locked;
  @override
  double? get completionPercentage;
  @override
  String? get videoThumbnailId;
  @override
  bool? get isVideoClip;

  /// Create a copy of VideoLessonEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoLessonEntityImplCopyWith<_$VideoLessonEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonTestEntity _$LessonTestEntityFromJson(Map<String, dynamic> json) {
  return _LessonTestEntity.fromJson(json);
}

/// @nodoc
mixin _$LessonTestEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get orderNumber => throw _privateConstructorUsedError;
  bool? get locked => throw _privateConstructorUsedError;
  int? get questionCount => throw _privateConstructorUsedError;
  int? get completedQuestionCount => throw _privateConstructorUsedError;
  double? get completedPercent => throw _privateConstructorUsedError;
  int? get lessonTypeId => throw _privateConstructorUsedError;
  String? get lessonType => throw _privateConstructorUsedError;
  String? get lessonTestThumbnailId => throw _privateConstructorUsedError;
  int? get correctAnswersCount => throw _privateConstructorUsedError;
  double? get testResult => throw _privateConstructorUsedError;
  bool? get isCompleted => throw _privateConstructorUsedError;
  double? get submissionLimit => throw _privateConstructorUsedError;

  /// Serializes this LessonTestEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonTestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonTestEntityCopyWith<LessonTestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonTestEntityCopyWith<$Res> {
  factory $LessonTestEntityCopyWith(
          LessonTestEntity value, $Res Function(LessonTestEntity) then) =
      _$LessonTestEntityCopyWithImpl<$Res, LessonTestEntity>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      int? orderNumber,
      bool? locked,
      int? questionCount,
      int? completedQuestionCount,
      double? completedPercent,
      int? lessonTypeId,
      String? lessonType,
      String? lessonTestThumbnailId,
      int? correctAnswersCount,
      double? testResult,
      bool? isCompleted,
      double? submissionLimit});
}

/// @nodoc
class _$LessonTestEntityCopyWithImpl<$Res, $Val extends LessonTestEntity>
    implements $LessonTestEntityCopyWith<$Res> {
  _$LessonTestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonTestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? orderNumber = freezed,
    Object? locked = freezed,
    Object? questionCount = freezed,
    Object? completedQuestionCount = freezed,
    Object? completedPercent = freezed,
    Object? lessonTypeId = freezed,
    Object? lessonType = freezed,
    Object? lessonTestThumbnailId = freezed,
    Object? correctAnswersCount = freezed,
    Object? testResult = freezed,
    Object? isCompleted = freezed,
    Object? submissionLimit = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      locked: freezed == locked
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool?,
      questionCount: freezed == questionCount
          ? _value.questionCount
          : questionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      completedQuestionCount: freezed == completedQuestionCount
          ? _value.completedQuestionCount
          : completedQuestionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      completedPercent: freezed == completedPercent
          ? _value.completedPercent
          : completedPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      lessonTypeId: freezed == lessonTypeId
          ? _value.lessonTypeId
          : lessonTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      lessonType: freezed == lessonType
          ? _value.lessonType
          : lessonType // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonTestThumbnailId: freezed == lessonTestThumbnailId
          ? _value.lessonTestThumbnailId
          : lessonTestThumbnailId // ignore: cast_nullable_to_non_nullable
              as String?,
      correctAnswersCount: freezed == correctAnswersCount
          ? _value.correctAnswersCount
          : correctAnswersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      testResult: freezed == testResult
          ? _value.testResult
          : testResult // ignore: cast_nullable_to_non_nullable
              as double?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      submissionLimit: freezed == submissionLimit
          ? _value.submissionLimit
          : submissionLimit // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonTestEntityImplCopyWith<$Res>
    implements $LessonTestEntityCopyWith<$Res> {
  factory _$$LessonTestEntityImplCopyWith(_$LessonTestEntityImpl value,
          $Res Function(_$LessonTestEntityImpl) then) =
      __$$LessonTestEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      int? orderNumber,
      bool? locked,
      int? questionCount,
      int? completedQuestionCount,
      double? completedPercent,
      int? lessonTypeId,
      String? lessonType,
      String? lessonTestThumbnailId,
      int? correctAnswersCount,
      double? testResult,
      bool? isCompleted,
      double? submissionLimit});
}

/// @nodoc
class __$$LessonTestEntityImplCopyWithImpl<$Res>
    extends _$LessonTestEntityCopyWithImpl<$Res, _$LessonTestEntityImpl>
    implements _$$LessonTestEntityImplCopyWith<$Res> {
  __$$LessonTestEntityImplCopyWithImpl(_$LessonTestEntityImpl _value,
      $Res Function(_$LessonTestEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonTestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? orderNumber = freezed,
    Object? locked = freezed,
    Object? questionCount = freezed,
    Object? completedQuestionCount = freezed,
    Object? completedPercent = freezed,
    Object? lessonTypeId = freezed,
    Object? lessonType = freezed,
    Object? lessonTestThumbnailId = freezed,
    Object? correctAnswersCount = freezed,
    Object? testResult = freezed,
    Object? isCompleted = freezed,
    Object? submissionLimit = freezed,
  }) {
    return _then(_$LessonTestEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      locked: freezed == locked
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool?,
      questionCount: freezed == questionCount
          ? _value.questionCount
          : questionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      completedQuestionCount: freezed == completedQuestionCount
          ? _value.completedQuestionCount
          : completedQuestionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      completedPercent: freezed == completedPercent
          ? _value.completedPercent
          : completedPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      lessonTypeId: freezed == lessonTypeId
          ? _value.lessonTypeId
          : lessonTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      lessonType: freezed == lessonType
          ? _value.lessonType
          : lessonType // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonTestThumbnailId: freezed == lessonTestThumbnailId
          ? _value.lessonTestThumbnailId
          : lessonTestThumbnailId // ignore: cast_nullable_to_non_nullable
              as String?,
      correctAnswersCount: freezed == correctAnswersCount
          ? _value.correctAnswersCount
          : correctAnswersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      testResult: freezed == testResult
          ? _value.testResult
          : testResult // ignore: cast_nullable_to_non_nullable
              as double?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      submissionLimit: freezed == submissionLimit
          ? _value.submissionLimit
          : submissionLimit // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonTestEntityImpl implements _LessonTestEntity {
  const _$LessonTestEntityImpl(
      {required this.id,
      required this.title,
      required this.orderNumber,
      required this.locked,
      required this.questionCount,
      required this.completedQuestionCount,
      required this.completedPercent,
      required this.lessonTypeId,
      required this.lessonType,
      required this.lessonTestThumbnailId,
      required this.correctAnswersCount,
      required this.testResult,
      required this.isCompleted,
      required this.submissionLimit});

  factory _$LessonTestEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonTestEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final int? orderNumber;
  @override
  final bool? locked;
  @override
  final int? questionCount;
  @override
  final int? completedQuestionCount;
  @override
  final double? completedPercent;
  @override
  final int? lessonTypeId;
  @override
  final String? lessonType;
  @override
  final String? lessonTestThumbnailId;
  @override
  final int? correctAnswersCount;
  @override
  final double? testResult;
  @override
  final bool? isCompleted;
  @override
  final double? submissionLimit;

  @override
  String toString() {
    return 'LessonTestEntity(id: $id, title: $title, orderNumber: $orderNumber, locked: $locked, questionCount: $questionCount, completedQuestionCount: $completedQuestionCount, completedPercent: $completedPercent, lessonTypeId: $lessonTypeId, lessonType: $lessonType, lessonTestThumbnailId: $lessonTestThumbnailId, correctAnswersCount: $correctAnswersCount, testResult: $testResult, isCompleted: $isCompleted, submissionLimit: $submissionLimit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonTestEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.locked, locked) || other.locked == locked) &&
            (identical(other.questionCount, questionCount) ||
                other.questionCount == questionCount) &&
            (identical(other.completedQuestionCount, completedQuestionCount) ||
                other.completedQuestionCount == completedQuestionCount) &&
            (identical(other.completedPercent, completedPercent) ||
                other.completedPercent == completedPercent) &&
            (identical(other.lessonTypeId, lessonTypeId) ||
                other.lessonTypeId == lessonTypeId) &&
            (identical(other.lessonType, lessonType) ||
                other.lessonType == lessonType) &&
            (identical(other.lessonTestThumbnailId, lessonTestThumbnailId) ||
                other.lessonTestThumbnailId == lessonTestThumbnailId) &&
            (identical(other.correctAnswersCount, correctAnswersCount) ||
                other.correctAnswersCount == correctAnswersCount) &&
            (identical(other.testResult, testResult) ||
                other.testResult == testResult) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.submissionLimit, submissionLimit) ||
                other.submissionLimit == submissionLimit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      orderNumber,
      locked,
      questionCount,
      completedQuestionCount,
      completedPercent,
      lessonTypeId,
      lessonType,
      lessonTestThumbnailId,
      correctAnswersCount,
      testResult,
      isCompleted,
      submissionLimit);

  /// Create a copy of LessonTestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonTestEntityImplCopyWith<_$LessonTestEntityImpl> get copyWith =>
      __$$LessonTestEntityImplCopyWithImpl<_$LessonTestEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonTestEntityImplToJson(
      this,
    );
  }
}

abstract class _LessonTestEntity implements LessonTestEntity {
  const factory _LessonTestEntity(
      {required final String? id,
      required final String? title,
      required final int? orderNumber,
      required final bool? locked,
      required final int? questionCount,
      required final int? completedQuestionCount,
      required final double? completedPercent,
      required final int? lessonTypeId,
      required final String? lessonType,
      required final String? lessonTestThumbnailId,
      required final int? correctAnswersCount,
      required final double? testResult,
      required final bool? isCompleted,
      required final double? submissionLimit}) = _$LessonTestEntityImpl;

  factory _LessonTestEntity.fromJson(Map<String, dynamic> json) =
      _$LessonTestEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  int? get orderNumber;
  @override
  bool? get locked;
  @override
  int? get questionCount;
  @override
  int? get completedQuestionCount;
  @override
  double? get completedPercent;
  @override
  int? get lessonTypeId;
  @override
  String? get lessonType;
  @override
  String? get lessonTestThumbnailId;
  @override
  int? get correctAnswersCount;
  @override
  double? get testResult;
  @override
  bool? get isCompleted;
  @override
  double? get submissionLimit;

  /// Create a copy of LessonTestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonTestEntityImplCopyWith<_$LessonTestEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}