// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TestResultEntity _$TestResultEntityFromJson(Map<String, dynamic> json) {
  return _TestResultEntity.fromJson(json);
}

/// @nodoc
mixin _$TestResultEntity {
  String? get programTitle => throw _privateConstructorUsedError;
  int? get orderNumber => throw _privateConstructorUsedError;
  int? get langId => throw _privateConstructorUsedError;
  List<CourseTestResultEntity>? get courses =>
      throw _privateConstructorUsedError;

  /// Serializes this TestResultEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TestResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TestResultEntityCopyWith<TestResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestResultEntityCopyWith<$Res> {
  factory $TestResultEntityCopyWith(
          TestResultEntity value, $Res Function(TestResultEntity) then) =
      _$TestResultEntityCopyWithImpl<$Res, TestResultEntity>;
  @useResult
  $Res call(
      {String? programTitle,
      int? orderNumber,
      int? langId,
      List<CourseTestResultEntity>? courses});
}

/// @nodoc
class _$TestResultEntityCopyWithImpl<$Res, $Val extends TestResultEntity>
    implements $TestResultEntityCopyWith<$Res> {
  _$TestResultEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TestResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programTitle = freezed,
    Object? orderNumber = freezed,
    Object? langId = freezed,
    Object? courses = freezed,
  }) {
    return _then(_value.copyWith(
      programTitle: freezed == programTitle
          ? _value.programTitle
          : programTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      langId: freezed == langId
          ? _value.langId
          : langId // ignore: cast_nullable_to_non_nullable
              as int?,
      courses: freezed == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseTestResultEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestResultEntityImplCopyWith<$Res>
    implements $TestResultEntityCopyWith<$Res> {
  factory _$$TestResultEntityImplCopyWith(_$TestResultEntityImpl value,
          $Res Function(_$TestResultEntityImpl) then) =
      __$$TestResultEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? programTitle,
      int? orderNumber,
      int? langId,
      List<CourseTestResultEntity>? courses});
}

/// @nodoc
class __$$TestResultEntityImplCopyWithImpl<$Res>
    extends _$TestResultEntityCopyWithImpl<$Res, _$TestResultEntityImpl>
    implements _$$TestResultEntityImplCopyWith<$Res> {
  __$$TestResultEntityImplCopyWithImpl(_$TestResultEntityImpl _value,
      $Res Function(_$TestResultEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programTitle = freezed,
    Object? orderNumber = freezed,
    Object? langId = freezed,
    Object? courses = freezed,
  }) {
    return _then(_$TestResultEntityImpl(
      programTitle: freezed == programTitle
          ? _value.programTitle
          : programTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      langId: freezed == langId
          ? _value.langId
          : langId // ignore: cast_nullable_to_non_nullable
              as int?,
      courses: freezed == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseTestResultEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestResultEntityImpl implements _TestResultEntity {
  const _$TestResultEntityImpl(
      {this.programTitle,
      this.orderNumber,
      this.langId,
      final List<CourseTestResultEntity>? courses})
      : _courses = courses;

  factory _$TestResultEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestResultEntityImplFromJson(json);

  @override
  final String? programTitle;
  @override
  final int? orderNumber;
  @override
  final int? langId;
  final List<CourseTestResultEntity>? _courses;
  @override
  List<CourseTestResultEntity>? get courses {
    final value = _courses;
    if (value == null) return null;
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TestResultEntity(programTitle: $programTitle, orderNumber: $orderNumber, langId: $langId, courses: $courses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestResultEntityImpl &&
            (identical(other.programTitle, programTitle) ||
                other.programTitle == programTitle) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.langId, langId) || other.langId == langId) &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, programTitle, orderNumber,
      langId, const DeepCollectionEquality().hash(_courses));

  /// Create a copy of TestResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestResultEntityImplCopyWith<_$TestResultEntityImpl> get copyWith =>
      __$$TestResultEntityImplCopyWithImpl<_$TestResultEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestResultEntityImplToJson(
      this,
    );
  }
}

abstract class _TestResultEntity implements TestResultEntity {
  const factory _TestResultEntity(
      {final String? programTitle,
      final int? orderNumber,
      final int? langId,
      final List<CourseTestResultEntity>? courses}) = _$TestResultEntityImpl;

  factory _TestResultEntity.fromJson(Map<String, dynamic> json) =
      _$TestResultEntityImpl.fromJson;

  @override
  String? get programTitle;
  @override
  int? get orderNumber;
  @override
  int? get langId;
  @override
  List<CourseTestResultEntity>? get courses;

  /// Create a copy of TestResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestResultEntityImplCopyWith<_$TestResultEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseTestResultEntity _$CourseTestResultEntityFromJson(
    Map<String, dynamic> json) {
  return _CourseTestResultEntity.fromJson(json);
}

/// @nodoc
mixin _$CourseTestResultEntity {
  String? get courseTitle => throw _privateConstructorUsedError;
  int? get orderNumber => throw _privateConstructorUsedError;
  List<CourseTopicTestResultEntity>? get courseTopics =>
      throw _privateConstructorUsedError;

  /// Serializes this CourseTestResultEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseTestResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseTestResultEntityCopyWith<CourseTestResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseTestResultEntityCopyWith<$Res> {
  factory $CourseTestResultEntityCopyWith(CourseTestResultEntity value,
          $Res Function(CourseTestResultEntity) then) =
      _$CourseTestResultEntityCopyWithImpl<$Res, CourseTestResultEntity>;
  @useResult
  $Res call(
      {String? courseTitle,
      int? orderNumber,
      List<CourseTopicTestResultEntity>? courseTopics});
}

/// @nodoc
class _$CourseTestResultEntityCopyWithImpl<$Res,
        $Val extends CourseTestResultEntity>
    implements $CourseTestResultEntityCopyWith<$Res> {
  _$CourseTestResultEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseTestResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseTitle = freezed,
    Object? orderNumber = freezed,
    Object? courseTopics = freezed,
  }) {
    return _then(_value.copyWith(
      courseTitle: freezed == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      courseTopics: freezed == courseTopics
          ? _value.courseTopics
          : courseTopics // ignore: cast_nullable_to_non_nullable
              as List<CourseTopicTestResultEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseTestResultEntityImplCopyWith<$Res>
    implements $CourseTestResultEntityCopyWith<$Res> {
  factory _$$CourseTestResultEntityImplCopyWith(
          _$CourseTestResultEntityImpl value,
          $Res Function(_$CourseTestResultEntityImpl) then) =
      __$$CourseTestResultEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? courseTitle,
      int? orderNumber,
      List<CourseTopicTestResultEntity>? courseTopics});
}

/// @nodoc
class __$$CourseTestResultEntityImplCopyWithImpl<$Res>
    extends _$CourseTestResultEntityCopyWithImpl<$Res,
        _$CourseTestResultEntityImpl>
    implements _$$CourseTestResultEntityImplCopyWith<$Res> {
  __$$CourseTestResultEntityImplCopyWithImpl(
      _$CourseTestResultEntityImpl _value,
      $Res Function(_$CourseTestResultEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseTestResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseTitle = freezed,
    Object? orderNumber = freezed,
    Object? courseTopics = freezed,
  }) {
    return _then(_$CourseTestResultEntityImpl(
      courseTitle: freezed == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      courseTopics: freezed == courseTopics
          ? _value._courseTopics
          : courseTopics // ignore: cast_nullable_to_non_nullable
              as List<CourseTopicTestResultEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseTestResultEntityImpl implements _CourseTestResultEntity {
  const _$CourseTestResultEntityImpl(
      {this.courseTitle,
      this.orderNumber,
      final List<CourseTopicTestResultEntity>? courseTopics})
      : _courseTopics = courseTopics;

  factory _$CourseTestResultEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseTestResultEntityImplFromJson(json);

  @override
  final String? courseTitle;
  @override
  final int? orderNumber;
  final List<CourseTopicTestResultEntity>? _courseTopics;
  @override
  List<CourseTopicTestResultEntity>? get courseTopics {
    final value = _courseTopics;
    if (value == null) return null;
    if (_courseTopics is EqualUnmodifiableListView) return _courseTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CourseTestResultEntity(courseTitle: $courseTitle, orderNumber: $orderNumber, courseTopics: $courseTopics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTestResultEntityImpl &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            const DeepCollectionEquality()
                .equals(other._courseTopics, _courseTopics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, courseTitle, orderNumber,
      const DeepCollectionEquality().hash(_courseTopics));

  /// Create a copy of CourseTestResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTestResultEntityImplCopyWith<_$CourseTestResultEntityImpl>
      get copyWith => __$$CourseTestResultEntityImplCopyWithImpl<
          _$CourseTestResultEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseTestResultEntityImplToJson(
      this,
    );
  }
}

abstract class _CourseTestResultEntity implements CourseTestResultEntity {
  const factory _CourseTestResultEntity(
          {final String? courseTitle,
          final int? orderNumber,
          final List<CourseTopicTestResultEntity>? courseTopics}) =
      _$CourseTestResultEntityImpl;

  factory _CourseTestResultEntity.fromJson(Map<String, dynamic> json) =
      _$CourseTestResultEntityImpl.fromJson;

  @override
  String? get courseTitle;
  @override
  int? get orderNumber;
  @override
  List<CourseTopicTestResultEntity>? get courseTopics;

  /// Create a copy of CourseTestResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseTestResultEntityImplCopyWith<_$CourseTestResultEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CourseTopicTestResultEntity _$CourseTopicTestResultEntityFromJson(
    Map<String, dynamic> json) {
  return _CourseTopicTestResultEntity.fromJson(json);
}

/// @nodoc
mixin _$CourseTopicTestResultEntity {
  String? get courseTopicTitle => throw _privateConstructorUsedError;
  int? get orderNumber => throw _privateConstructorUsedError;
  List<LessonTestResultEntity>? get lessonTestResults =>
      throw _privateConstructorUsedError;

  /// Serializes this CourseTopicTestResultEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseTopicTestResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseTopicTestResultEntityCopyWith<CourseTopicTestResultEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseTopicTestResultEntityCopyWith<$Res> {
  factory $CourseTopicTestResultEntityCopyWith(
          CourseTopicTestResultEntity value,
          $Res Function(CourseTopicTestResultEntity) then) =
      _$CourseTopicTestResultEntityCopyWithImpl<$Res,
          CourseTopicTestResultEntity>;
  @useResult
  $Res call(
      {String? courseTopicTitle,
      int? orderNumber,
      List<LessonTestResultEntity>? lessonTestResults});
}

/// @nodoc
class _$CourseTopicTestResultEntityCopyWithImpl<$Res,
        $Val extends CourseTopicTestResultEntity>
    implements $CourseTopicTestResultEntityCopyWith<$Res> {
  _$CourseTopicTestResultEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseTopicTestResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseTopicTitle = freezed,
    Object? orderNumber = freezed,
    Object? lessonTestResults = freezed,
  }) {
    return _then(_value.copyWith(
      courseTopicTitle: freezed == courseTopicTitle
          ? _value.courseTopicTitle
          : courseTopicTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      lessonTestResults: freezed == lessonTestResults
          ? _value.lessonTestResults
          : lessonTestResults // ignore: cast_nullable_to_non_nullable
              as List<LessonTestResultEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseTopicTestResultEntityImplCopyWith<$Res>
    implements $CourseTopicTestResultEntityCopyWith<$Res> {
  factory _$$CourseTopicTestResultEntityImplCopyWith(
          _$CourseTopicTestResultEntityImpl value,
          $Res Function(_$CourseTopicTestResultEntityImpl) then) =
      __$$CourseTopicTestResultEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? courseTopicTitle,
      int? orderNumber,
      List<LessonTestResultEntity>? lessonTestResults});
}

/// @nodoc
class __$$CourseTopicTestResultEntityImplCopyWithImpl<$Res>
    extends _$CourseTopicTestResultEntityCopyWithImpl<$Res,
        _$CourseTopicTestResultEntityImpl>
    implements _$$CourseTopicTestResultEntityImplCopyWith<$Res> {
  __$$CourseTopicTestResultEntityImplCopyWithImpl(
      _$CourseTopicTestResultEntityImpl _value,
      $Res Function(_$CourseTopicTestResultEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseTopicTestResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseTopicTitle = freezed,
    Object? orderNumber = freezed,
    Object? lessonTestResults = freezed,
  }) {
    return _then(_$CourseTopicTestResultEntityImpl(
      courseTopicTitle: freezed == courseTopicTitle
          ? _value.courseTopicTitle
          : courseTopicTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      lessonTestResults: freezed == lessonTestResults
          ? _value._lessonTestResults
          : lessonTestResults // ignore: cast_nullable_to_non_nullable
              as List<LessonTestResultEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseTopicTestResultEntityImpl
    implements _CourseTopicTestResultEntity {
  const _$CourseTopicTestResultEntityImpl(
      {this.courseTopicTitle,
      this.orderNumber,
      final List<LessonTestResultEntity>? lessonTestResults})
      : _lessonTestResults = lessonTestResults;

  factory _$CourseTopicTestResultEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CourseTopicTestResultEntityImplFromJson(json);

  @override
  final String? courseTopicTitle;
  @override
  final int? orderNumber;
  final List<LessonTestResultEntity>? _lessonTestResults;
  @override
  List<LessonTestResultEntity>? get lessonTestResults {
    final value = _lessonTestResults;
    if (value == null) return null;
    if (_lessonTestResults is EqualUnmodifiableListView)
      return _lessonTestResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CourseTopicTestResultEntity(courseTopicTitle: $courseTopicTitle, orderNumber: $orderNumber, lessonTestResults: $lessonTestResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTopicTestResultEntityImpl &&
            (identical(other.courseTopicTitle, courseTopicTitle) ||
                other.courseTopicTitle == courseTopicTitle) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            const DeepCollectionEquality()
                .equals(other._lessonTestResults, _lessonTestResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, courseTopicTitle, orderNumber,
      const DeepCollectionEquality().hash(_lessonTestResults));

  /// Create a copy of CourseTopicTestResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTopicTestResultEntityImplCopyWith<_$CourseTopicTestResultEntityImpl>
      get copyWith => __$$CourseTopicTestResultEntityImplCopyWithImpl<
          _$CourseTopicTestResultEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseTopicTestResultEntityImplToJson(
      this,
    );
  }
}

abstract class _CourseTopicTestResultEntity
    implements CourseTopicTestResultEntity {
  const factory _CourseTopicTestResultEntity(
          {final String? courseTopicTitle,
          final int? orderNumber,
          final List<LessonTestResultEntity>? lessonTestResults}) =
      _$CourseTopicTestResultEntityImpl;

  factory _CourseTopicTestResultEntity.fromJson(Map<String, dynamic> json) =
      _$CourseTopicTestResultEntityImpl.fromJson;

  @override
  String? get courseTopicTitle;
  @override
  int? get orderNumber;
  @override
  List<LessonTestResultEntity>? get lessonTestResults;

  /// Create a copy of CourseTopicTestResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseTopicTestResultEntityImplCopyWith<_$CourseTopicTestResultEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LessonTestResultEntity _$LessonTestResultEntityFromJson(
    Map<String, dynamic> json) {
  return _LessonTestResultEntity.fromJson(json);
}

/// @nodoc
mixin _$LessonTestResultEntity {
  String? get lessonTitle => throw _privateConstructorUsedError;
  int? get orderNumber => throw _privateConstructorUsedError;
  int? get questionsCount => throw _privateConstructorUsedError;
  int? get correctAnswersCount => throw _privateConstructorUsedError;
  int? get attemptsCount => throw _privateConstructorUsedError;
  double? get passResult => throw _privateConstructorUsedError;

  /// Serializes this LessonTestResultEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonTestResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonTestResultEntityCopyWith<LessonTestResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonTestResultEntityCopyWith<$Res> {
  factory $LessonTestResultEntityCopyWith(LessonTestResultEntity value,
          $Res Function(LessonTestResultEntity) then) =
      _$LessonTestResultEntityCopyWithImpl<$Res, LessonTestResultEntity>;
  @useResult
  $Res call(
      {String? lessonTitle,
      int? orderNumber,
      int? questionsCount,
      int? correctAnswersCount,
      int? attemptsCount,
      double? passResult});
}

/// @nodoc
class _$LessonTestResultEntityCopyWithImpl<$Res,
        $Val extends LessonTestResultEntity>
    implements $LessonTestResultEntityCopyWith<$Res> {
  _$LessonTestResultEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonTestResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonTitle = freezed,
    Object? orderNumber = freezed,
    Object? questionsCount = freezed,
    Object? correctAnswersCount = freezed,
    Object? attemptsCount = freezed,
    Object? passResult = freezed,
  }) {
    return _then(_value.copyWith(
      lessonTitle: freezed == lessonTitle
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      questionsCount: freezed == questionsCount
          ? _value.questionsCount
          : questionsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      correctAnswersCount: freezed == correctAnswersCount
          ? _value.correctAnswersCount
          : correctAnswersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      attemptsCount: freezed == attemptsCount
          ? _value.attemptsCount
          : attemptsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      passResult: freezed == passResult
          ? _value.passResult
          : passResult // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonTestResultEntityImplCopyWith<$Res>
    implements $LessonTestResultEntityCopyWith<$Res> {
  factory _$$LessonTestResultEntityImplCopyWith(
          _$LessonTestResultEntityImpl value,
          $Res Function(_$LessonTestResultEntityImpl) then) =
      __$$LessonTestResultEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? lessonTitle,
      int? orderNumber,
      int? questionsCount,
      int? correctAnswersCount,
      int? attemptsCount,
      double? passResult});
}

/// @nodoc
class __$$LessonTestResultEntityImplCopyWithImpl<$Res>
    extends _$LessonTestResultEntityCopyWithImpl<$Res,
        _$LessonTestResultEntityImpl>
    implements _$$LessonTestResultEntityImplCopyWith<$Res> {
  __$$LessonTestResultEntityImplCopyWithImpl(
      _$LessonTestResultEntityImpl _value,
      $Res Function(_$LessonTestResultEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonTestResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonTitle = freezed,
    Object? orderNumber = freezed,
    Object? questionsCount = freezed,
    Object? correctAnswersCount = freezed,
    Object? attemptsCount = freezed,
    Object? passResult = freezed,
  }) {
    return _then(_$LessonTestResultEntityImpl(
      lessonTitle: freezed == lessonTitle
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      questionsCount: freezed == questionsCount
          ? _value.questionsCount
          : questionsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      correctAnswersCount: freezed == correctAnswersCount
          ? _value.correctAnswersCount
          : correctAnswersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      attemptsCount: freezed == attemptsCount
          ? _value.attemptsCount
          : attemptsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      passResult: freezed == passResult
          ? _value.passResult
          : passResult // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonTestResultEntityImpl implements _LessonTestResultEntity {
  const _$LessonTestResultEntityImpl(
      {this.lessonTitle,
      this.orderNumber,
      this.questionsCount,
      this.correctAnswersCount,
      this.attemptsCount,
      this.passResult});

  factory _$LessonTestResultEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonTestResultEntityImplFromJson(json);

  @override
  final String? lessonTitle;
  @override
  final int? orderNumber;
  @override
  final int? questionsCount;
  @override
  final int? correctAnswersCount;
  @override
  final int? attemptsCount;
  @override
  final double? passResult;

  @override
  String toString() {
    return 'LessonTestResultEntity(lessonTitle: $lessonTitle, orderNumber: $orderNumber, questionsCount: $questionsCount, correctAnswersCount: $correctAnswersCount, attemptsCount: $attemptsCount, passResult: $passResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonTestResultEntityImpl &&
            (identical(other.lessonTitle, lessonTitle) ||
                other.lessonTitle == lessonTitle) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.questionsCount, questionsCount) ||
                other.questionsCount == questionsCount) &&
            (identical(other.correctAnswersCount, correctAnswersCount) ||
                other.correctAnswersCount == correctAnswersCount) &&
            (identical(other.attemptsCount, attemptsCount) ||
                other.attemptsCount == attemptsCount) &&
            (identical(other.passResult, passResult) ||
                other.passResult == passResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lessonTitle, orderNumber,
      questionsCount, correctAnswersCount, attemptsCount, passResult);

  /// Create a copy of LessonTestResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonTestResultEntityImplCopyWith<_$LessonTestResultEntityImpl>
      get copyWith => __$$LessonTestResultEntityImplCopyWithImpl<
          _$LessonTestResultEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonTestResultEntityImplToJson(
      this,
    );
  }
}

abstract class _LessonTestResultEntity implements LessonTestResultEntity {
  const factory _LessonTestResultEntity(
      {final String? lessonTitle,
      final int? orderNumber,
      final int? questionsCount,
      final int? correctAnswersCount,
      final int? attemptsCount,
      final double? passResult}) = _$LessonTestResultEntityImpl;

  factory _LessonTestResultEntity.fromJson(Map<String, dynamic> json) =
      _$LessonTestResultEntityImpl.fromJson;

  @override
  String? get lessonTitle;
  @override
  int? get orderNumber;
  @override
  int? get questionsCount;
  @override
  int? get correctAnswersCount;
  @override
  int? get attemptsCount;
  @override
  double? get passResult;

  /// Create a copy of LessonTestResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonTestResultEntityImplCopyWith<_$LessonTestResultEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
