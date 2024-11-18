// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TestEntity _$TestEntityFromJson(Map<String, dynamic> json) {
  return _TestEntity.fromJson(json);
}

/// @nodoc
mixin _$TestEntity {
  String? get courseId => throw _privateConstructorUsedError;
  String? get courseTopicId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get questionCount => throw _privateConstructorUsedError;
  double? get totalDuration => throw _privateConstructorUsedError;
  String? get attemptId => throw _privateConstructorUsedError;
  int? get correctAnswersCount => throw _privateConstructorUsedError;
  String? get testResult => throw _privateConstructorUsedError;
  bool? get isCompleted => throw _privateConstructorUsedError;
  String? get lessonTestThumbnailId => throw _privateConstructorUsedError;
  List<QuestionEntity>? get questions => throw _privateConstructorUsedError;

  /// Serializes this TestEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TestEntityCopyWith<TestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestEntityCopyWith<$Res> {
  factory $TestEntityCopyWith(
          TestEntity value, $Res Function(TestEntity) then) =
      _$TestEntityCopyWithImpl<$Res, TestEntity>;
  @useResult
  $Res call(
      {String? courseId,
      String? courseTopicId,
      String? id,
      String? details,
      String? title,
      int? questionCount,
      double? totalDuration,
      String? attemptId,
      int? correctAnswersCount,
      String? testResult,
      bool? isCompleted,
      String? lessonTestThumbnailId,
      List<QuestionEntity>? questions});
}

/// @nodoc
class _$TestEntityCopyWithImpl<$Res, $Val extends TestEntity>
    implements $TestEntityCopyWith<$Res> {
  _$TestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = freezed,
    Object? courseTopicId = freezed,
    Object? id = freezed,
    Object? details = freezed,
    Object? title = freezed,
    Object? questionCount = freezed,
    Object? totalDuration = freezed,
    Object? attemptId = freezed,
    Object? correctAnswersCount = freezed,
    Object? testResult = freezed,
    Object? isCompleted = freezed,
    Object? lessonTestThumbnailId = freezed,
    Object? questions = freezed,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      questionCount: freezed == questionCount
          ? _value.questionCount
          : questionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalDuration: freezed == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      attemptId: freezed == attemptId
          ? _value.attemptId
          : attemptId // ignore: cast_nullable_to_non_nullable
              as String?,
      correctAnswersCount: freezed == correctAnswersCount
          ? _value.correctAnswersCount
          : correctAnswersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      testResult: freezed == testResult
          ? _value.testResult
          : testResult // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      lessonTestThumbnailId: freezed == lessonTestThumbnailId
          ? _value.lessonTestThumbnailId
          : lessonTestThumbnailId // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: freezed == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestEntityImplCopyWith<$Res>
    implements $TestEntityCopyWith<$Res> {
  factory _$$TestEntityImplCopyWith(
          _$TestEntityImpl value, $Res Function(_$TestEntityImpl) then) =
      __$$TestEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? courseId,
      String? courseTopicId,
      String? id,
      String? details,
      String? title,
      int? questionCount,
      double? totalDuration,
      String? attemptId,
      int? correctAnswersCount,
      String? testResult,
      bool? isCompleted,
      String? lessonTestThumbnailId,
      List<QuestionEntity>? questions});
}

/// @nodoc
class __$$TestEntityImplCopyWithImpl<$Res>
    extends _$TestEntityCopyWithImpl<$Res, _$TestEntityImpl>
    implements _$$TestEntityImplCopyWith<$Res> {
  __$$TestEntityImplCopyWithImpl(
      _$TestEntityImpl _value, $Res Function(_$TestEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = freezed,
    Object? courseTopicId = freezed,
    Object? id = freezed,
    Object? details = freezed,
    Object? title = freezed,
    Object? questionCount = freezed,
    Object? totalDuration = freezed,
    Object? attemptId = freezed,
    Object? correctAnswersCount = freezed,
    Object? testResult = freezed,
    Object? isCompleted = freezed,
    Object? lessonTestThumbnailId = freezed,
    Object? questions = freezed,
  }) {
    return _then(_$TestEntityImpl(
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseTopicId: freezed == courseTopicId
          ? _value.courseTopicId
          : courseTopicId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      questionCount: freezed == questionCount
          ? _value.questionCount
          : questionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalDuration: freezed == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      attemptId: freezed == attemptId
          ? _value.attemptId
          : attemptId // ignore: cast_nullable_to_non_nullable
              as String?,
      correctAnswersCount: freezed == correctAnswersCount
          ? _value.correctAnswersCount
          : correctAnswersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      testResult: freezed == testResult
          ? _value.testResult
          : testResult // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      lessonTestThumbnailId: freezed == lessonTestThumbnailId
          ? _value.lessonTestThumbnailId
          : lessonTestThumbnailId // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestEntityImpl implements _TestEntity {
  _$TestEntityImpl(
      {this.courseId,
      this.courseTopicId,
      this.id,
      this.details,
      this.title,
      this.questionCount,
      this.totalDuration,
      this.attemptId,
      this.correctAnswersCount,
      this.testResult,
      this.isCompleted,
      this.lessonTestThumbnailId,
      final List<QuestionEntity>? questions})
      : _questions = questions;

  factory _$TestEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestEntityImplFromJson(json);

  @override
  final String? courseId;
  @override
  final String? courseTopicId;
  @override
  final String? id;
  @override
  final String? details;
  @override
  final String? title;
  @override
  final int? questionCount;
  @override
  final double? totalDuration;
  @override
  final String? attemptId;
  @override
  final int? correctAnswersCount;
  @override
  final String? testResult;
  @override
  final bool? isCompleted;
  @override
  final String? lessonTestThumbnailId;
  final List<QuestionEntity>? _questions;
  @override
  List<QuestionEntity>? get questions {
    final value = _questions;
    if (value == null) return null;
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TestEntity(courseId: $courseId, courseTopicId: $courseTopicId, id: $id, details: $details, title: $title, questionCount: $questionCount, totalDuration: $totalDuration, attemptId: $attemptId, correctAnswersCount: $correctAnswersCount, testResult: $testResult, isCompleted: $isCompleted, lessonTestThumbnailId: $lessonTestThumbnailId, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestEntityImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.courseTopicId, courseTopicId) ||
                other.courseTopicId == courseTopicId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.questionCount, questionCount) ||
                other.questionCount == questionCount) &&
            (identical(other.totalDuration, totalDuration) ||
                other.totalDuration == totalDuration) &&
            (identical(other.attemptId, attemptId) ||
                other.attemptId == attemptId) &&
            (identical(other.correctAnswersCount, correctAnswersCount) ||
                other.correctAnswersCount == correctAnswersCount) &&
            (identical(other.testResult, testResult) ||
                other.testResult == testResult) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.lessonTestThumbnailId, lessonTestThumbnailId) ||
                other.lessonTestThumbnailId == lessonTestThumbnailId) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      courseId,
      courseTopicId,
      id,
      details,
      title,
      questionCount,
      totalDuration,
      attemptId,
      correctAnswersCount,
      testResult,
      isCompleted,
      lessonTestThumbnailId,
      const DeepCollectionEquality().hash(_questions));

  /// Create a copy of TestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestEntityImplCopyWith<_$TestEntityImpl> get copyWith =>
      __$$TestEntityImplCopyWithImpl<_$TestEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestEntityImplToJson(
      this,
    );
  }
}

abstract class _TestEntity implements TestEntity {
  factory _TestEntity(
      {final String? courseId,
      final String? courseTopicId,
      final String? id,
      final String? details,
      final String? title,
      final int? questionCount,
      final double? totalDuration,
      final String? attemptId,
      final int? correctAnswersCount,
      final String? testResult,
      final bool? isCompleted,
      final String? lessonTestThumbnailId,
      final List<QuestionEntity>? questions}) = _$TestEntityImpl;

  factory _TestEntity.fromJson(Map<String, dynamic> json) =
      _$TestEntityImpl.fromJson;

  @override
  String? get courseId;
  @override
  String? get courseTopicId;
  @override
  String? get id;
  @override
  String? get details;
  @override
  String? get title;
  @override
  int? get questionCount;
  @override
  double? get totalDuration;
  @override
  String? get attemptId;
  @override
  int? get correctAnswersCount;
  @override
  String? get testResult;
  @override
  bool? get isCompleted;
  @override
  String? get lessonTestThumbnailId;
  @override
  List<QuestionEntity>? get questions;

  /// Create a copy of TestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestEntityImplCopyWith<_$TestEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionEntity _$QuestionEntityFromJson(Map<String, dynamic> json) {
  return _QuestionEntity.fromJson(json);
}

/// @nodoc
mixin _$QuestionEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get questionText => throw _privateConstructorUsedError;
  double? get questionDuration => throw _privateConstructorUsedError;
  String? get lessonTestId => throw _privateConstructorUsedError;
  int? get orderNumber => throw _privateConstructorUsedError;
  List<AnswerEntity>? get answers => throw _privateConstructorUsedError;

  /// Serializes this QuestionEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionEntityCopyWith<QuestionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionEntityCopyWith<$Res> {
  factory $QuestionEntityCopyWith(
          QuestionEntity value, $Res Function(QuestionEntity) then) =
      _$QuestionEntityCopyWithImpl<$Res, QuestionEntity>;
  @useResult
  $Res call(
      {String? id,
      String? questionText,
      double? questionDuration,
      String? lessonTestId,
      int? orderNumber,
      List<AnswerEntity>? answers});
}

/// @nodoc
class _$QuestionEntityCopyWithImpl<$Res, $Val extends QuestionEntity>
    implements $QuestionEntityCopyWith<$Res> {
  _$QuestionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? questionText = freezed,
    Object? questionDuration = freezed,
    Object? lessonTestId = freezed,
    Object? orderNumber = freezed,
    Object? answers = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      questionText: freezed == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String?,
      questionDuration: freezed == questionDuration
          ? _value.questionDuration
          : questionDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      lessonTestId: freezed == lessonTestId
          ? _value.lessonTestId
          : lessonTestId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      answers: freezed == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<AnswerEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionEntityImplCopyWith<$Res>
    implements $QuestionEntityCopyWith<$Res> {
  factory _$$QuestionEntityImplCopyWith(_$QuestionEntityImpl value,
          $Res Function(_$QuestionEntityImpl) then) =
      __$$QuestionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? questionText,
      double? questionDuration,
      String? lessonTestId,
      int? orderNumber,
      List<AnswerEntity>? answers});
}

/// @nodoc
class __$$QuestionEntityImplCopyWithImpl<$Res>
    extends _$QuestionEntityCopyWithImpl<$Res, _$QuestionEntityImpl>
    implements _$$QuestionEntityImplCopyWith<$Res> {
  __$$QuestionEntityImplCopyWithImpl(
      _$QuestionEntityImpl _value, $Res Function(_$QuestionEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? questionText = freezed,
    Object? questionDuration = freezed,
    Object? lessonTestId = freezed,
    Object? orderNumber = freezed,
    Object? answers = freezed,
  }) {
    return _then(_$QuestionEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      questionText: freezed == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String?,
      questionDuration: freezed == questionDuration
          ? _value.questionDuration
          : questionDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      lessonTestId: freezed == lessonTestId
          ? _value.lessonTestId
          : lessonTestId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      answers: freezed == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<AnswerEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionEntityImpl implements _QuestionEntity {
  _$QuestionEntityImpl(
      {this.id,
      this.questionText,
      this.questionDuration,
      this.lessonTestId,
      this.orderNumber,
      final List<AnswerEntity>? answers})
      : _answers = answers;

  factory _$QuestionEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? questionText;
  @override
  final double? questionDuration;
  @override
  final String? lessonTestId;
  @override
  final int? orderNumber;
  final List<AnswerEntity>? _answers;
  @override
  List<AnswerEntity>? get answers {
    final value = _answers;
    if (value == null) return null;
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuestionEntity(id: $id, questionText: $questionText, questionDuration: $questionDuration, lessonTestId: $lessonTestId, orderNumber: $orderNumber, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.questionText, questionText) ||
                other.questionText == questionText) &&
            (identical(other.questionDuration, questionDuration) ||
                other.questionDuration == questionDuration) &&
            (identical(other.lessonTestId, lessonTestId) ||
                other.lessonTestId == lessonTestId) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      questionText,
      questionDuration,
      lessonTestId,
      orderNumber,
      const DeepCollectionEquality().hash(_answers));

  /// Create a copy of QuestionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionEntityImplCopyWith<_$QuestionEntityImpl> get copyWith =>
      __$$QuestionEntityImplCopyWithImpl<_$QuestionEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionEntityImplToJson(
      this,
    );
  }
}

abstract class _QuestionEntity implements QuestionEntity {
  factory _QuestionEntity(
      {final String? id,
      final String? questionText,
      final double? questionDuration,
      final String? lessonTestId,
      final int? orderNumber,
      final List<AnswerEntity>? answers}) = _$QuestionEntityImpl;

  factory _QuestionEntity.fromJson(Map<String, dynamic> json) =
      _$QuestionEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get questionText;
  @override
  double? get questionDuration;
  @override
  String? get lessonTestId;
  @override
  int? get orderNumber;
  @override
  List<AnswerEntity>? get answers;

  /// Create a copy of QuestionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionEntityImplCopyWith<_$QuestionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnswerEntity _$AnswerEntityFromJson(Map<String, dynamic> json) {
  return _AnswerEntity.fromJson(json);
}

/// @nodoc
mixin _$AnswerEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get lessonTestQuestionId => throw _privateConstructorUsedError;
  String? get answerText => throw _privateConstructorUsedError;

  /// Serializes this AnswerEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnswerEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnswerEntityCopyWith<AnswerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerEntityCopyWith<$Res> {
  factory $AnswerEntityCopyWith(
          AnswerEntity value, $Res Function(AnswerEntity) then) =
      _$AnswerEntityCopyWithImpl<$Res, AnswerEntity>;
  @useResult
  $Res call({String? id, String? lessonTestQuestionId, String? answerText});
}

/// @nodoc
class _$AnswerEntityCopyWithImpl<$Res, $Val extends AnswerEntity>
    implements $AnswerEntityCopyWith<$Res> {
  _$AnswerEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnswerEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lessonTestQuestionId = freezed,
    Object? answerText = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonTestQuestionId: freezed == lessonTestQuestionId
          ? _value.lessonTestQuestionId
          : lessonTestQuestionId // ignore: cast_nullable_to_non_nullable
              as String?,
      answerText: freezed == answerText
          ? _value.answerText
          : answerText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerEntityImplCopyWith<$Res>
    implements $AnswerEntityCopyWith<$Res> {
  factory _$$AnswerEntityImplCopyWith(
          _$AnswerEntityImpl value, $Res Function(_$AnswerEntityImpl) then) =
      __$$AnswerEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? lessonTestQuestionId, String? answerText});
}

/// @nodoc
class __$$AnswerEntityImplCopyWithImpl<$Res>
    extends _$AnswerEntityCopyWithImpl<$Res, _$AnswerEntityImpl>
    implements _$$AnswerEntityImplCopyWith<$Res> {
  __$$AnswerEntityImplCopyWithImpl(
      _$AnswerEntityImpl _value, $Res Function(_$AnswerEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnswerEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lessonTestQuestionId = freezed,
    Object? answerText = freezed,
  }) {
    return _then(_$AnswerEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonTestQuestionId: freezed == lessonTestQuestionId
          ? _value.lessonTestQuestionId
          : lessonTestQuestionId // ignore: cast_nullable_to_non_nullable
              as String?,
      answerText: freezed == answerText
          ? _value.answerText
          : answerText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerEntityImpl implements _AnswerEntity {
  _$AnswerEntityImpl({this.id, this.lessonTestQuestionId, this.answerText});

  factory _$AnswerEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? lessonTestQuestionId;
  @override
  final String? answerText;

  @override
  String toString() {
    return 'AnswerEntity(id: $id, lessonTestQuestionId: $lessonTestQuestionId, answerText: $answerText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lessonTestQuestionId, lessonTestQuestionId) ||
                other.lessonTestQuestionId == lessonTestQuestionId) &&
            (identical(other.answerText, answerText) ||
                other.answerText == answerText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, lessonTestQuestionId, answerText);

  /// Create a copy of AnswerEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerEntityImplCopyWith<_$AnswerEntityImpl> get copyWith =>
      __$$AnswerEntityImplCopyWithImpl<_$AnswerEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerEntityImplToJson(
      this,
    );
  }
}

abstract class _AnswerEntity implements AnswerEntity {
  factory _AnswerEntity(
      {final String? id,
      final String? lessonTestQuestionId,
      final String? answerText}) = _$AnswerEntityImpl;

  factory _AnswerEntity.fromJson(Map<String, dynamic> json) =
      _$AnswerEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get lessonTestQuestionId;
  @override
  String? get answerText;

  /// Create a copy of AnswerEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerEntityImplCopyWith<_$AnswerEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnswerResultEntity _$AnswerResultEntityFromJson(Map<String, dynamic> json) {
  return _AnswerResultEntity.fromJson(json);
}

/// @nodoc
mixin _$AnswerResultEntity {
  String? get questionId => throw _privateConstructorUsedError;
  String? get answerId => throw _privateConstructorUsedError;
  double? get duration => throw _privateConstructorUsedError;
  String? get ownerId => throw _privateConstructorUsedError;
  String? get attemptId => throw _privateConstructorUsedError;

  /// Serializes this AnswerResultEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnswerResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnswerResultEntityCopyWith<AnswerResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerResultEntityCopyWith<$Res> {
  factory $AnswerResultEntityCopyWith(
          AnswerResultEntity value, $Res Function(AnswerResultEntity) then) =
      _$AnswerResultEntityCopyWithImpl<$Res, AnswerResultEntity>;
  @useResult
  $Res call(
      {String? questionId,
      String? answerId,
      double? duration,
      String? ownerId,
      String? attemptId});
}

/// @nodoc
class _$AnswerResultEntityCopyWithImpl<$Res, $Val extends AnswerResultEntity>
    implements $AnswerResultEntityCopyWith<$Res> {
  _$AnswerResultEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnswerResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = freezed,
    Object? answerId = freezed,
    Object? duration = freezed,
    Object? ownerId = freezed,
    Object? attemptId = freezed,
  }) {
    return _then(_value.copyWith(
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      answerId: freezed == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      attemptId: freezed == attemptId
          ? _value.attemptId
          : attemptId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerResultEntityImplCopyWith<$Res>
    implements $AnswerResultEntityCopyWith<$Res> {
  factory _$$AnswerResultEntityImplCopyWith(_$AnswerResultEntityImpl value,
          $Res Function(_$AnswerResultEntityImpl) then) =
      __$$AnswerResultEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? questionId,
      String? answerId,
      double? duration,
      String? ownerId,
      String? attemptId});
}

/// @nodoc
class __$$AnswerResultEntityImplCopyWithImpl<$Res>
    extends _$AnswerResultEntityCopyWithImpl<$Res, _$AnswerResultEntityImpl>
    implements _$$AnswerResultEntityImplCopyWith<$Res> {
  __$$AnswerResultEntityImplCopyWithImpl(_$AnswerResultEntityImpl _value,
      $Res Function(_$AnswerResultEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnswerResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = freezed,
    Object? answerId = freezed,
    Object? duration = freezed,
    Object? ownerId = freezed,
    Object? attemptId = freezed,
  }) {
    return _then(_$AnswerResultEntityImpl(
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      answerId: freezed == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      attemptId: freezed == attemptId
          ? _value.attemptId
          : attemptId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerResultEntityImpl implements _AnswerResultEntity {
  _$AnswerResultEntityImpl(
      {this.questionId,
      this.answerId,
      this.duration,
      this.ownerId,
      this.attemptId});

  factory _$AnswerResultEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerResultEntityImplFromJson(json);

  @override
  final String? questionId;
  @override
  final String? answerId;
  @override
  final double? duration;
  @override
  final String? ownerId;
  @override
  final String? attemptId;

  @override
  String toString() {
    return 'AnswerResultEntity(questionId: $questionId, answerId: $answerId, duration: $duration, ownerId: $ownerId, attemptId: $attemptId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerResultEntityImpl &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.answerId, answerId) ||
                other.answerId == answerId) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.attemptId, attemptId) ||
                other.attemptId == attemptId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, questionId, answerId, duration, ownerId, attemptId);

  /// Create a copy of AnswerResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerResultEntityImplCopyWith<_$AnswerResultEntityImpl> get copyWith =>
      __$$AnswerResultEntityImplCopyWithImpl<_$AnswerResultEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerResultEntityImplToJson(
      this,
    );
  }
}

abstract class _AnswerResultEntity implements AnswerResultEntity {
  factory _AnswerResultEntity(
      {final String? questionId,
      final String? answerId,
      final double? duration,
      final String? ownerId,
      final String? attemptId}) = _$AnswerResultEntityImpl;

  factory _AnswerResultEntity.fromJson(Map<String, dynamic> json) =
      _$AnswerResultEntityImpl.fromJson;

  @override
  String? get questionId;
  @override
  String? get answerId;
  @override
  double? get duration;
  @override
  String? get ownerId;
  @override
  String? get attemptId;

  /// Create a copy of AnswerResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerResultEntityImplCopyWith<_$AnswerResultEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
