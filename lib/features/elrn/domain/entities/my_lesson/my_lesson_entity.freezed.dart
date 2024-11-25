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
  List<MyLessonTopicEntity>? get topics => throw _privateConstructorUsedError;

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
      List<MyLessonTopicEntity>? topics});
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
    Object? topics = freezed,
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
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<MyLessonTopicEntity>?,
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
      List<MyLessonTopicEntity>? topics});
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
    Object? topics = freezed,
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
      topics: freezed == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<MyLessonTopicEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyLessonEntityImpl implements _MyLessonEntity {
  const _$MyLessonEntityImpl(
      {this.courseTitle,
      this.iconFileId,
      final List<MyLessonTopicEntity>? topics})
      : _topics = topics;

  factory _$MyLessonEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyLessonEntityImplFromJson(json);

  @override
  final String? courseTitle;
  @override
  final String? iconFileId;
  final List<MyLessonTopicEntity>? _topics;
  @override
  List<MyLessonTopicEntity>? get topics {
    final value = _topics;
    if (value == null) return null;
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
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
      {final String? courseTitle,
      final String? iconFileId,
      final List<MyLessonTopicEntity>? topics}) = _$MyLessonEntityImpl;

  factory _MyLessonEntity.fromJson(Map<String, dynamic> json) =
      _$MyLessonEntityImpl.fromJson;

  @override
  String? get courseTitle;
  @override
  String? get iconFileId;
  @override
  List<MyLessonTopicEntity>? get topics;

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
      {this.courseTopic,
      this.courseTopicId,
      final List<MyLessonTopicChildEntity>? childTopics})
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
          {final String? courseTopic,
          final String? courseTopicId,
          final List<MyLessonTopicChildEntity>? childTopics}) =
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
      {this.courseTopic,
      this.courseTopicId,
      final List<VideoLessonEntity>? videoLessons,
      final List<LessonTestEntity>? lessonTests,
      final List<String>? homeworks})
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
      {final String? courseTopic,
      final String? courseTopicId,
      final List<VideoLessonEntity>? videoLessons,
      final List<LessonTestEntity>? lessonTests,
      final List<String>? homeworks}) = _$MyLessonTopicChildEntityImpl;

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
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get title => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get orderNumber => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get lessonTypeId => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get lessonType => throw _privateConstructorUsedError;
  @HiveField(5)
  double? get watchedDuration => throw _privateConstructorUsedError;
  @HiveField(6)
  double? get videoDuration => throw _privateConstructorUsedError;
  @HiveField(7)
  bool? get locked => throw _privateConstructorUsedError;
  @HiveField(8)
  double? get completionPercentage => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get videoThumbnailId => throw _privateConstructorUsedError;
  @HiveField(10)
  bool? get isVideoClip => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get course => throw _privateConstructorUsedError;
  @HiveField(12)
  String? get courseId => throw _privateConstructorUsedError;
  @HiveField(13)
  String? get courseTopic => throw _privateConstructorUsedError;
  @HiveField(14)
  String? get courseTopicId => throw _privateConstructorUsedError;
  @HiveField(15)
  String? get lessonId => throw _privateConstructorUsedError;
  @HiveField(16)
  String? get details => throw _privateConstructorUsedError;
  @HiveField(17)
  String? get nextVideoLessonId => throw _privateConstructorUsedError;
  @HiveField(18)
  String? get nextVideoLessonTitle => throw _privateConstructorUsedError;
  @HiveField(19)
  double? get watchedPercent => throw _privateConstructorUsedError;
  @HiveField(20)
  bool? get canRate => throw _privateConstructorUsedError;
  @HiveField(21)
  List<VideoFileEntity>? get videoFiles =>
      throw _privateConstructorUsedError; // Custom adapter required
  @HiveField(22)
  List<MaterialFileEntity>? get materialFiles =>
      throw _privateConstructorUsedError;

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
      {@HiveField(0) String? id,
      @HiveField(1) String? title,
      @HiveField(2) int? orderNumber,
      @HiveField(3) int? lessonTypeId,
      @HiveField(4) String? lessonType,
      @HiveField(5) double? watchedDuration,
      @HiveField(6) double? videoDuration,
      @HiveField(7) bool? locked,
      @HiveField(8) double? completionPercentage,
      @HiveField(9) String? videoThumbnailId,
      @HiveField(10) bool? isVideoClip,
      @HiveField(11) String? course,
      @HiveField(12) String? courseId,
      @HiveField(13) String? courseTopic,
      @HiveField(14) String? courseTopicId,
      @HiveField(15) String? lessonId,
      @HiveField(16) String? details,
      @HiveField(17) String? nextVideoLessonId,
      @HiveField(18) String? nextVideoLessonTitle,
      @HiveField(19) double? watchedPercent,
      @HiveField(20) bool? canRate,
      @HiveField(21) List<VideoFileEntity>? videoFiles,
      @HiveField(22) List<MaterialFileEntity>? materialFiles});
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
    Object? course = freezed,
    Object? courseId = freezed,
    Object? courseTopic = freezed,
    Object? courseTopicId = freezed,
    Object? lessonId = freezed,
    Object? details = freezed,
    Object? nextVideoLessonId = freezed,
    Object? nextVideoLessonTitle = freezed,
    Object? watchedPercent = freezed,
    Object? canRate = freezed,
    Object? videoFiles = freezed,
    Object? materialFiles = freezed,
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
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseTopic: freezed == courseTopic
          ? _value.courseTopic
          : courseTopic // ignore: cast_nullable_to_non_nullable
              as String?,
      courseTopicId: freezed == courseTopicId
          ? _value.courseTopicId
          : courseTopicId // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonId: freezed == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      nextVideoLessonId: freezed == nextVideoLessonId
          ? _value.nextVideoLessonId
          : nextVideoLessonId // ignore: cast_nullable_to_non_nullable
              as String?,
      nextVideoLessonTitle: freezed == nextVideoLessonTitle
          ? _value.nextVideoLessonTitle
          : nextVideoLessonTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      watchedPercent: freezed == watchedPercent
          ? _value.watchedPercent
          : watchedPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      canRate: freezed == canRate
          ? _value.canRate
          : canRate // ignore: cast_nullable_to_non_nullable
              as bool?,
      videoFiles: freezed == videoFiles
          ? _value.videoFiles
          : videoFiles // ignore: cast_nullable_to_non_nullable
              as List<VideoFileEntity>?,
      materialFiles: freezed == materialFiles
          ? _value.materialFiles
          : materialFiles // ignore: cast_nullable_to_non_nullable
              as List<MaterialFileEntity>?,
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
      {@HiveField(0) String? id,
      @HiveField(1) String? title,
      @HiveField(2) int? orderNumber,
      @HiveField(3) int? lessonTypeId,
      @HiveField(4) String? lessonType,
      @HiveField(5) double? watchedDuration,
      @HiveField(6) double? videoDuration,
      @HiveField(7) bool? locked,
      @HiveField(8) double? completionPercentage,
      @HiveField(9) String? videoThumbnailId,
      @HiveField(10) bool? isVideoClip,
      @HiveField(11) String? course,
      @HiveField(12) String? courseId,
      @HiveField(13) String? courseTopic,
      @HiveField(14) String? courseTopicId,
      @HiveField(15) String? lessonId,
      @HiveField(16) String? details,
      @HiveField(17) String? nextVideoLessonId,
      @HiveField(18) String? nextVideoLessonTitle,
      @HiveField(19) double? watchedPercent,
      @HiveField(20) bool? canRate,
      @HiveField(21) List<VideoFileEntity>? videoFiles,
      @HiveField(22) List<MaterialFileEntity>? materialFiles});
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
    Object? course = freezed,
    Object? courseId = freezed,
    Object? courseTopic = freezed,
    Object? courseTopicId = freezed,
    Object? lessonId = freezed,
    Object? details = freezed,
    Object? nextVideoLessonId = freezed,
    Object? nextVideoLessonTitle = freezed,
    Object? watchedPercent = freezed,
    Object? canRate = freezed,
    Object? videoFiles = freezed,
    Object? materialFiles = freezed,
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
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseTopic: freezed == courseTopic
          ? _value.courseTopic
          : courseTopic // ignore: cast_nullable_to_non_nullable
              as String?,
      courseTopicId: freezed == courseTopicId
          ? _value.courseTopicId
          : courseTopicId // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonId: freezed == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      nextVideoLessonId: freezed == nextVideoLessonId
          ? _value.nextVideoLessonId
          : nextVideoLessonId // ignore: cast_nullable_to_non_nullable
              as String?,
      nextVideoLessonTitle: freezed == nextVideoLessonTitle
          ? _value.nextVideoLessonTitle
          : nextVideoLessonTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      watchedPercent: freezed == watchedPercent
          ? _value.watchedPercent
          : watchedPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      canRate: freezed == canRate
          ? _value.canRate
          : canRate // ignore: cast_nullable_to_non_nullable
              as bool?,
      videoFiles: freezed == videoFiles
          ? _value._videoFiles
          : videoFiles // ignore: cast_nullable_to_non_nullable
              as List<VideoFileEntity>?,
      materialFiles: freezed == materialFiles
          ? _value._materialFiles
          : materialFiles // ignore: cast_nullable_to_non_nullable
              as List<MaterialFileEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoLessonEntityImpl implements _VideoLessonEntity {
  const _$VideoLessonEntityImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.title,
      @HiveField(2) this.orderNumber,
      @HiveField(3) this.lessonTypeId,
      @HiveField(4) this.lessonType,
      @HiveField(5) this.watchedDuration,
      @HiveField(6) this.videoDuration,
      @HiveField(7) this.locked,
      @HiveField(8) this.completionPercentage,
      @HiveField(9) this.videoThumbnailId,
      @HiveField(10) this.isVideoClip,
      @HiveField(11) this.course,
      @HiveField(12) this.courseId,
      @HiveField(13) this.courseTopic,
      @HiveField(14) this.courseTopicId,
      @HiveField(15) this.lessonId,
      @HiveField(16) this.details,
      @HiveField(17) this.nextVideoLessonId,
      @HiveField(18) this.nextVideoLessonTitle,
      @HiveField(19) this.watchedPercent,
      @HiveField(20) this.canRate,
      @HiveField(21) final List<VideoFileEntity>? videoFiles,
      @HiveField(22) final List<MaterialFileEntity>? materialFiles})
      : _videoFiles = videoFiles,
        _materialFiles = materialFiles;

  factory _$VideoLessonEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoLessonEntityImplFromJson(json);

  @override
  @HiveField(0)
  final String? id;
  @override
  @HiveField(1)
  final String? title;
  @override
  @HiveField(2)
  final int? orderNumber;
  @override
  @HiveField(3)
  final int? lessonTypeId;
  @override
  @HiveField(4)
  final String? lessonType;
  @override
  @HiveField(5)
  final double? watchedDuration;
  @override
  @HiveField(6)
  final double? videoDuration;
  @override
  @HiveField(7)
  final bool? locked;
  @override
  @HiveField(8)
  final double? completionPercentage;
  @override
  @HiveField(9)
  final String? videoThumbnailId;
  @override
  @HiveField(10)
  final bool? isVideoClip;
  @override
  @HiveField(11)
  final String? course;
  @override
  @HiveField(12)
  final String? courseId;
  @override
  @HiveField(13)
  final String? courseTopic;
  @override
  @HiveField(14)
  final String? courseTopicId;
  @override
  @HiveField(15)
  final String? lessonId;
  @override
  @HiveField(16)
  final String? details;
  @override
  @HiveField(17)
  final String? nextVideoLessonId;
  @override
  @HiveField(18)
  final String? nextVideoLessonTitle;
  @override
  @HiveField(19)
  final double? watchedPercent;
  @override
  @HiveField(20)
  final bool? canRate;
  final List<VideoFileEntity>? _videoFiles;
  @override
  @HiveField(21)
  List<VideoFileEntity>? get videoFiles {
    final value = _videoFiles;
    if (value == null) return null;
    if (_videoFiles is EqualUnmodifiableListView) return _videoFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Custom adapter required
  final List<MaterialFileEntity>? _materialFiles;
// Custom adapter required
  @override
  @HiveField(22)
  List<MaterialFileEntity>? get materialFiles {
    final value = _materialFiles;
    if (value == null) return null;
    if (_materialFiles is EqualUnmodifiableListView) return _materialFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VideoLessonEntity(id: $id, title: $title, orderNumber: $orderNumber, lessonTypeId: $lessonTypeId, lessonType: $lessonType, watchedDuration: $watchedDuration, videoDuration: $videoDuration, locked: $locked, completionPercentage: $completionPercentage, videoThumbnailId: $videoThumbnailId, isVideoClip: $isVideoClip, course: $course, courseId: $courseId, courseTopic: $courseTopic, courseTopicId: $courseTopicId, lessonId: $lessonId, details: $details, nextVideoLessonId: $nextVideoLessonId, nextVideoLessonTitle: $nextVideoLessonTitle, watchedPercent: $watchedPercent, canRate: $canRate, videoFiles: $videoFiles, materialFiles: $materialFiles)';
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
                other.isVideoClip == isVideoClip) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.courseTopic, courseTopic) ||
                other.courseTopic == courseTopic) &&
            (identical(other.courseTopicId, courseTopicId) ||
                other.courseTopicId == courseTopicId) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.nextVideoLessonId, nextVideoLessonId) ||
                other.nextVideoLessonId == nextVideoLessonId) &&
            (identical(other.nextVideoLessonTitle, nextVideoLessonTitle) ||
                other.nextVideoLessonTitle == nextVideoLessonTitle) &&
            (identical(other.watchedPercent, watchedPercent) ||
                other.watchedPercent == watchedPercent) &&
            (identical(other.canRate, canRate) || other.canRate == canRate) &&
            const DeepCollectionEquality()
                .equals(other._videoFiles, _videoFiles) &&
            const DeepCollectionEquality()
                .equals(other._materialFiles, _materialFiles));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
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
        isVideoClip,
        course,
        courseId,
        courseTopic,
        courseTopicId,
        lessonId,
        details,
        nextVideoLessonId,
        nextVideoLessonTitle,
        watchedPercent,
        canRate,
        const DeepCollectionEquality().hash(_videoFiles),
        const DeepCollectionEquality().hash(_materialFiles)
      ]);

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
          {@HiveField(0) final String? id,
          @HiveField(1) final String? title,
          @HiveField(2) final int? orderNumber,
          @HiveField(3) final int? lessonTypeId,
          @HiveField(4) final String? lessonType,
          @HiveField(5) final double? watchedDuration,
          @HiveField(6) final double? videoDuration,
          @HiveField(7) final bool? locked,
          @HiveField(8) final double? completionPercentage,
          @HiveField(9) final String? videoThumbnailId,
          @HiveField(10) final bool? isVideoClip,
          @HiveField(11) final String? course,
          @HiveField(12) final String? courseId,
          @HiveField(13) final String? courseTopic,
          @HiveField(14) final String? courseTopicId,
          @HiveField(15) final String? lessonId,
          @HiveField(16) final String? details,
          @HiveField(17) final String? nextVideoLessonId,
          @HiveField(18) final String? nextVideoLessonTitle,
          @HiveField(19) final double? watchedPercent,
          @HiveField(20) final bool? canRate,
          @HiveField(21) final List<VideoFileEntity>? videoFiles,
          @HiveField(22) final List<MaterialFileEntity>? materialFiles}) =
      _$VideoLessonEntityImpl;

  factory _VideoLessonEntity.fromJson(Map<String, dynamic> json) =
      _$VideoLessonEntityImpl.fromJson;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  String? get title;
  @override
  @HiveField(2)
  int? get orderNumber;
  @override
  @HiveField(3)
  int? get lessonTypeId;
  @override
  @HiveField(4)
  String? get lessonType;
  @override
  @HiveField(5)
  double? get watchedDuration;
  @override
  @HiveField(6)
  double? get videoDuration;
  @override
  @HiveField(7)
  bool? get locked;
  @override
  @HiveField(8)
  double? get completionPercentage;
  @override
  @HiveField(9)
  String? get videoThumbnailId;
  @override
  @HiveField(10)
  bool? get isVideoClip;
  @override
  @HiveField(11)
  String? get course;
  @override
  @HiveField(12)
  String? get courseId;
  @override
  @HiveField(13)
  String? get courseTopic;
  @override
  @HiveField(14)
  String? get courseTopicId;
  @override
  @HiveField(15)
  String? get lessonId;
  @override
  @HiveField(16)
  String? get details;
  @override
  @HiveField(17)
  String? get nextVideoLessonId;
  @override
  @HiveField(18)
  String? get nextVideoLessonTitle;
  @override
  @HiveField(19)
  double? get watchedPercent;
  @override
  @HiveField(20)
  bool? get canRate;
  @override
  @HiveField(21)
  List<VideoFileEntity>? get videoFiles; // Custom adapter required
  @override
  @HiveField(22)
  List<MaterialFileEntity>? get materialFiles;

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
  String? get courseId => throw _privateConstructorUsedError;
  String? get courseTopicId => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  double? get totalDuration => throw _privateConstructorUsedError;
  String? get attemptId => throw _privateConstructorUsedError;
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
  double? get testDuration => throw _privateConstructorUsedError;
  double? get totalSpentDuration => throw _privateConstructorUsedError;
  int? get totalQuestionCount => throw _privateConstructorUsedError;
  int? get incorrectAnswersCount => throw _privateConstructorUsedError;

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
      {String? courseId,
      String? courseTopicId,
      String? details,
      String? id,
      String? title,
      double? totalDuration,
      String? attemptId,
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
      double? submissionLimit,
      double? testDuration,
      double? totalSpentDuration,
      int? totalQuestionCount,
      int? incorrectAnswersCount});
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
    Object? courseId = freezed,
    Object? courseTopicId = freezed,
    Object? details = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? totalDuration = freezed,
    Object? attemptId = freezed,
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
    Object? testDuration = freezed,
    Object? totalSpentDuration = freezed,
    Object? totalQuestionCount = freezed,
    Object? incorrectAnswersCount = freezed,
  }) {
    return _then(_value.copyWith(
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseTopicId: freezed == courseTopicId
          ? _value.courseTopicId
          : courseTopicId // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      totalDuration: freezed == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      attemptId: freezed == attemptId
          ? _value.attemptId
          : attemptId // ignore: cast_nullable_to_non_nullable
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
      testDuration: freezed == testDuration
          ? _value.testDuration
          : testDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      totalSpentDuration: freezed == totalSpentDuration
          ? _value.totalSpentDuration
          : totalSpentDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      totalQuestionCount: freezed == totalQuestionCount
          ? _value.totalQuestionCount
          : totalQuestionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      incorrectAnswersCount: freezed == incorrectAnswersCount
          ? _value.incorrectAnswersCount
          : incorrectAnswersCount // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {String? courseId,
      String? courseTopicId,
      String? details,
      String? id,
      String? title,
      double? totalDuration,
      String? attemptId,
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
      double? submissionLimit,
      double? testDuration,
      double? totalSpentDuration,
      int? totalQuestionCount,
      int? incorrectAnswersCount});
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
    Object? courseId = freezed,
    Object? courseTopicId = freezed,
    Object? details = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? totalDuration = freezed,
    Object? attemptId = freezed,
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
    Object? testDuration = freezed,
    Object? totalSpentDuration = freezed,
    Object? totalQuestionCount = freezed,
    Object? incorrectAnswersCount = freezed,
  }) {
    return _then(_$LessonTestEntityImpl(
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseTopicId: freezed == courseTopicId
          ? _value.courseTopicId
          : courseTopicId // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      totalDuration: freezed == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      attemptId: freezed == attemptId
          ? _value.attemptId
          : attemptId // ignore: cast_nullable_to_non_nullable
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
      testDuration: freezed == testDuration
          ? _value.testDuration
          : testDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      totalSpentDuration: freezed == totalSpentDuration
          ? _value.totalSpentDuration
          : totalSpentDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      totalQuestionCount: freezed == totalQuestionCount
          ? _value.totalQuestionCount
          : totalQuestionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      incorrectAnswersCount: freezed == incorrectAnswersCount
          ? _value.incorrectAnswersCount
          : incorrectAnswersCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonTestEntityImpl implements _LessonTestEntity {
  const _$LessonTestEntityImpl(
      {this.courseId,
      this.courseTopicId,
      this.details,
      this.id,
      this.title,
      this.totalDuration,
      this.attemptId,
      this.orderNumber,
      this.locked,
      this.questionCount,
      this.completedQuestionCount,
      this.completedPercent,
      this.lessonTypeId,
      this.lessonType,
      this.lessonTestThumbnailId,
      this.correctAnswersCount,
      this.testResult,
      this.isCompleted,
      this.submissionLimit,
      this.testDuration,
      this.totalSpentDuration,
      this.totalQuestionCount,
      this.incorrectAnswersCount});

  factory _$LessonTestEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonTestEntityImplFromJson(json);

  @override
  final String? courseId;
  @override
  final String? courseTopicId;
  @override
  final String? details;
  @override
  final String? id;
  @override
  final String? title;
  @override
  final double? totalDuration;
  @override
  final String? attemptId;
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
  final double? testDuration;
  @override
  final double? totalSpentDuration;
  @override
  final int? totalQuestionCount;
  @override
  final int? incorrectAnswersCount;

  @override
  String toString() {
    return 'LessonTestEntity(courseId: $courseId, courseTopicId: $courseTopicId, details: $details, id: $id, title: $title, totalDuration: $totalDuration, attemptId: $attemptId, orderNumber: $orderNumber, locked: $locked, questionCount: $questionCount, completedQuestionCount: $completedQuestionCount, completedPercent: $completedPercent, lessonTypeId: $lessonTypeId, lessonType: $lessonType, lessonTestThumbnailId: $lessonTestThumbnailId, correctAnswersCount: $correctAnswersCount, testResult: $testResult, isCompleted: $isCompleted, submissionLimit: $submissionLimit, testDuration: $testDuration, totalSpentDuration: $totalSpentDuration, totalQuestionCount: $totalQuestionCount, incorrectAnswersCount: $incorrectAnswersCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonTestEntityImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.courseTopicId, courseTopicId) ||
                other.courseTopicId == courseTopicId) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.totalDuration, totalDuration) ||
                other.totalDuration == totalDuration) &&
            (identical(other.attemptId, attemptId) ||
                other.attemptId == attemptId) &&
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
                other.submissionLimit == submissionLimit) &&
            (identical(other.testDuration, testDuration) ||
                other.testDuration == testDuration) &&
            (identical(other.totalSpentDuration, totalSpentDuration) ||
                other.totalSpentDuration == totalSpentDuration) &&
            (identical(other.totalQuestionCount, totalQuestionCount) ||
                other.totalQuestionCount == totalQuestionCount) &&
            (identical(other.incorrectAnswersCount, incorrectAnswersCount) ||
                other.incorrectAnswersCount == incorrectAnswersCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        courseId,
        courseTopicId,
        details,
        id,
        title,
        totalDuration,
        attemptId,
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
        submissionLimit,
        testDuration,
        totalSpentDuration,
        totalQuestionCount,
        incorrectAnswersCount
      ]);

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
      {final String? courseId,
      final String? courseTopicId,
      final String? details,
      final String? id,
      final String? title,
      final double? totalDuration,
      final String? attemptId,
      final int? orderNumber,
      final bool? locked,
      final int? questionCount,
      final int? completedQuestionCount,
      final double? completedPercent,
      final int? lessonTypeId,
      final String? lessonType,
      final String? lessonTestThumbnailId,
      final int? correctAnswersCount,
      final double? testResult,
      final bool? isCompleted,
      final double? submissionLimit,
      final double? testDuration,
      final double? totalSpentDuration,
      final int? totalQuestionCount,
      final int? incorrectAnswersCount}) = _$LessonTestEntityImpl;

  factory _LessonTestEntity.fromJson(Map<String, dynamic> json) =
      _$LessonTestEntityImpl.fromJson;

  @override
  String? get courseId;
  @override
  String? get courseTopicId;
  @override
  String? get details;
  @override
  String? get id;
  @override
  String? get title;
  @override
  double? get totalDuration;
  @override
  String? get attemptId;
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
  @override
  double? get testDuration;
  @override
  double? get totalSpentDuration;
  @override
  int? get totalQuestionCount;
  @override
  int? get incorrectAnswersCount;

  /// Create a copy of LessonTestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonTestEntityImplCopyWith<_$LessonTestEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoFileEntity _$VideoFileEntityFromJson(Map<String, dynamic> json) {
  return _VideoFileEntity.fromJson(json);
}

/// @nodoc
mixin _$VideoFileEntity {
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get fileName => throw _privateConstructorUsedError;

  /// Serializes this VideoFileEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoFileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoFileEntityCopyWith<VideoFileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoFileEntityCopyWith<$Res> {
  factory $VideoFileEntityCopyWith(
          VideoFileEntity value, $Res Function(VideoFileEntity) then) =
      _$VideoFileEntityCopyWithImpl<$Res, VideoFileEntity>;
  @useResult
  $Res call({@HiveField(0) String? id, @HiveField(1) String? fileName});
}

/// @nodoc
class _$VideoFileEntityCopyWithImpl<$Res, $Val extends VideoFileEntity>
    implements $VideoFileEntityCopyWith<$Res> {
  _$VideoFileEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoFileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fileName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoFileEntityImplCopyWith<$Res>
    implements $VideoFileEntityCopyWith<$Res> {
  factory _$$VideoFileEntityImplCopyWith(_$VideoFileEntityImpl value,
          $Res Function(_$VideoFileEntityImpl) then) =
      __$$VideoFileEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String? id, @HiveField(1) String? fileName});
}

/// @nodoc
class __$$VideoFileEntityImplCopyWithImpl<$Res>
    extends _$VideoFileEntityCopyWithImpl<$Res, _$VideoFileEntityImpl>
    implements _$$VideoFileEntityImplCopyWith<$Res> {
  __$$VideoFileEntityImplCopyWithImpl(
      _$VideoFileEntityImpl _value, $Res Function(_$VideoFileEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoFileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fileName = freezed,
  }) {
    return _then(_$VideoFileEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoFileEntityImpl implements _VideoFileEntity {
  const _$VideoFileEntityImpl(
      {@HiveField(0) this.id, @HiveField(1) this.fileName});

  factory _$VideoFileEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoFileEntityImplFromJson(json);

  @override
  @HiveField(0)
  final String? id;
  @override
  @HiveField(1)
  final String? fileName;

  @override
  String toString() {
    return 'VideoFileEntity(id: $id, fileName: $fileName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoFileEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fileName);

  /// Create a copy of VideoFileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoFileEntityImplCopyWith<_$VideoFileEntityImpl> get copyWith =>
      __$$VideoFileEntityImplCopyWithImpl<_$VideoFileEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoFileEntityImplToJson(
      this,
    );
  }
}

abstract class _VideoFileEntity implements VideoFileEntity {
  const factory _VideoFileEntity(
      {@HiveField(0) final String? id,
      @HiveField(1) final String? fileName}) = _$VideoFileEntityImpl;

  factory _VideoFileEntity.fromJson(Map<String, dynamic> json) =
      _$VideoFileEntityImpl.fromJson;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  String? get fileName;

  /// Create a copy of VideoFileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoFileEntityImplCopyWith<_$VideoFileEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MaterialFileEntity _$MaterialFileEntityFromJson(Map<String, dynamic> json) {
  return _MaterialFileEntity.fromJson(json);
}

/// @nodoc
mixin _$MaterialFileEntity {
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get fileName => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get fileSize => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get fileExtension => throw _privateConstructorUsedError;
  @HiveField(4)
  bool? get canDownload => throw _privateConstructorUsedError;

  /// Serializes this MaterialFileEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MaterialFileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MaterialFileEntityCopyWith<MaterialFileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialFileEntityCopyWith<$Res> {
  factory $MaterialFileEntityCopyWith(
          MaterialFileEntity value, $Res Function(MaterialFileEntity) then) =
      _$MaterialFileEntityCopyWithImpl<$Res, MaterialFileEntity>;
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? fileName,
      @HiveField(2) int? fileSize,
      @HiveField(3) String? fileExtension,
      @HiveField(4) bool? canDownload});
}

/// @nodoc
class _$MaterialFileEntityCopyWithImpl<$Res, $Val extends MaterialFileEntity>
    implements $MaterialFileEntityCopyWith<$Res> {
  _$MaterialFileEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaterialFileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fileName = freezed,
    Object? fileSize = freezed,
    Object? fileExtension = freezed,
    Object? canDownload = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
      fileExtension: freezed == fileExtension
          ? _value.fileExtension
          : fileExtension // ignore: cast_nullable_to_non_nullable
              as String?,
      canDownload: freezed == canDownload
          ? _value.canDownload
          : canDownload // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MaterialFileEntityImplCopyWith<$Res>
    implements $MaterialFileEntityCopyWith<$Res> {
  factory _$$MaterialFileEntityImplCopyWith(_$MaterialFileEntityImpl value,
          $Res Function(_$MaterialFileEntityImpl) then) =
      __$$MaterialFileEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? fileName,
      @HiveField(2) int? fileSize,
      @HiveField(3) String? fileExtension,
      @HiveField(4) bool? canDownload});
}

/// @nodoc
class __$$MaterialFileEntityImplCopyWithImpl<$Res>
    extends _$MaterialFileEntityCopyWithImpl<$Res, _$MaterialFileEntityImpl>
    implements _$$MaterialFileEntityImplCopyWith<$Res> {
  __$$MaterialFileEntityImplCopyWithImpl(_$MaterialFileEntityImpl _value,
      $Res Function(_$MaterialFileEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaterialFileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fileName = freezed,
    Object? fileSize = freezed,
    Object? fileExtension = freezed,
    Object? canDownload = freezed,
  }) {
    return _then(_$MaterialFileEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
      fileExtension: freezed == fileExtension
          ? _value.fileExtension
          : fileExtension // ignore: cast_nullable_to_non_nullable
              as String?,
      canDownload: freezed == canDownload
          ? _value.canDownload
          : canDownload // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MaterialFileEntityImpl implements _MaterialFileEntity {
  const _$MaterialFileEntityImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.fileName,
      @HiveField(2) this.fileSize,
      @HiveField(3) this.fileExtension,
      @HiveField(4) this.canDownload});

  factory _$MaterialFileEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MaterialFileEntityImplFromJson(json);

  @override
  @HiveField(0)
  final String? id;
  @override
  @HiveField(1)
  final String? fileName;
  @override
  @HiveField(2)
  final int? fileSize;
  @override
  @HiveField(3)
  final String? fileExtension;
  @override
  @HiveField(4)
  final bool? canDownload;

  @override
  String toString() {
    return 'MaterialFileEntity(id: $id, fileName: $fileName, fileSize: $fileSize, fileExtension: $fileExtension, canDownload: $canDownload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialFileEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.fileExtension, fileExtension) ||
                other.fileExtension == fileExtension) &&
            (identical(other.canDownload, canDownload) ||
                other.canDownload == canDownload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, fileName, fileSize, fileExtension, canDownload);

  /// Create a copy of MaterialFileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaterialFileEntityImplCopyWith<_$MaterialFileEntityImpl> get copyWith =>
      __$$MaterialFileEntityImplCopyWithImpl<_$MaterialFileEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MaterialFileEntityImplToJson(
      this,
    );
  }
}

abstract class _MaterialFileEntity implements MaterialFileEntity {
  const factory _MaterialFileEntity(
      {@HiveField(0) final String? id,
      @HiveField(1) final String? fileName,
      @HiveField(2) final int? fileSize,
      @HiveField(3) final String? fileExtension,
      @HiveField(4) final bool? canDownload}) = _$MaterialFileEntityImpl;

  factory _MaterialFileEntity.fromJson(Map<String, dynamic> json) =
      _$MaterialFileEntityImpl.fromJson;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  String? get fileName;
  @override
  @HiveField(2)
  int? get fileSize;
  @override
  @HiveField(3)
  String? get fileExtension;
  @override
  @HiveField(4)
  bool? get canDownload;

  /// Create a copy of MaterialFileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaterialFileEntityImplCopyWith<_$MaterialFileEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
