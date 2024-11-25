// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProgramEntity _$ProgramEntityFromJson(Map<String, dynamic> json) {
  return _ProgramEntity.fromJson(json);
}

/// @nodoc
mixin _$ProgramEntity {
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get title => throw _privateConstructorUsedError;
  @HiveField(2)
  double? get price => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get docOn => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get docNumber => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get status => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get language => throw _privateConstructorUsedError;
  @HiveField(8)
  int? get languageId => throw _privateConstructorUsedError;
  @HiveField(9)
  int? get statusId => throw _privateConstructorUsedError;
  @HiveField(10)
  int? get organizationId => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get organization => throw _privateConstructorUsedError;
  @HiveField(12)
  int? get courseTopicChildCount => throw _privateConstructorUsedError;
  @HiveField(13)
  int? get courseTopicCount => throw _privateConstructorUsedError;
  @HiveField(14)
  String? get iconFileId => throw _privateConstructorUsedError;
  @HiveField(15)
  String? get backgroundColorCode => throw _privateConstructorUsedError;
  @HiveField(16)
  int? get courseCount => throw _privateConstructorUsedError;
  @HiveField(17)
  double? get completionPercent => throw _privateConstructorUsedError;
  @HiveField(18)
  int? get totalVideosCount => throw _privateConstructorUsedError;
  @HiveField(19)
  int? get totalTestsCount => throw _privateConstructorUsedError;
  @HiveField(20)
  bool? get canStart => throw _privateConstructorUsedError;
  @HiveField(21)
  int? get totalCertificatesCount => throw _privateConstructorUsedError;
  @HiveField(22)
  List<CourseEntity>? get courses => throw _privateConstructorUsedError;
  @HiveField(23)
  List<ProfessionEntity>? get professions => throw _privateConstructorUsedError;
  @HiveField(24)
  String? get programDuration => throw _privateConstructorUsedError;

  /// Serializes this ProgramEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProgramEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgramEntityCopyWith<ProgramEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramEntityCopyWith<$Res> {
  factory $ProgramEntityCopyWith(
          ProgramEntity value, $Res Function(ProgramEntity) then) =
      _$ProgramEntityCopyWithImpl<$Res, ProgramEntity>;
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? title,
      @HiveField(2) double? price,
      @HiveField(3) String? description,
      @HiveField(4) String? docOn,
      @HiveField(5) String? docNumber,
      @HiveField(6) String? status,
      @HiveField(7) String? language,
      @HiveField(8) int? languageId,
      @HiveField(9) int? statusId,
      @HiveField(10) int? organizationId,
      @HiveField(11) String? organization,
      @HiveField(12) int? courseTopicChildCount,
      @HiveField(13) int? courseTopicCount,
      @HiveField(14) String? iconFileId,
      @HiveField(15) String? backgroundColorCode,
      @HiveField(16) int? courseCount,
      @HiveField(17) double? completionPercent,
      @HiveField(18) int? totalVideosCount,
      @HiveField(19) int? totalTestsCount,
      @HiveField(20) bool? canStart,
      @HiveField(21) int? totalCertificatesCount,
      @HiveField(22) List<CourseEntity>? courses,
      @HiveField(23) List<ProfessionEntity>? professions,
      @HiveField(24) String? programDuration});
}

/// @nodoc
class _$ProgramEntityCopyWithImpl<$Res, $Val extends ProgramEntity>
    implements $ProgramEntityCopyWith<$Res> {
  _$ProgramEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgramEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? docOn = freezed,
    Object? docNumber = freezed,
    Object? status = freezed,
    Object? language = freezed,
    Object? languageId = freezed,
    Object? statusId = freezed,
    Object? organizationId = freezed,
    Object? organization = freezed,
    Object? courseTopicChildCount = freezed,
    Object? courseTopicCount = freezed,
    Object? iconFileId = freezed,
    Object? backgroundColorCode = freezed,
    Object? courseCount = freezed,
    Object? completionPercent = freezed,
    Object? totalVideosCount = freezed,
    Object? totalTestsCount = freezed,
    Object? canStart = freezed,
    Object? totalCertificatesCount = freezed,
    Object? courses = freezed,
    Object? professions = freezed,
    Object? programDuration = freezed,
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      docOn: freezed == docOn
          ? _value.docOn
          : docOn // ignore: cast_nullable_to_non_nullable
              as String?,
      docNumber: freezed == docNumber
          ? _value.docNumber
          : docNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      languageId: freezed == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as int?,
      statusId: freezed == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as int?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as int?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      courseTopicChildCount: freezed == courseTopicChildCount
          ? _value.courseTopicChildCount
          : courseTopicChildCount // ignore: cast_nullable_to_non_nullable
              as int?,
      courseTopicCount: freezed == courseTopicCount
          ? _value.courseTopicCount
          : courseTopicCount // ignore: cast_nullable_to_non_nullable
              as int?,
      iconFileId: freezed == iconFileId
          ? _value.iconFileId
          : iconFileId // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColorCode: freezed == backgroundColorCode
          ? _value.backgroundColorCode
          : backgroundColorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      courseCount: freezed == courseCount
          ? _value.courseCount
          : courseCount // ignore: cast_nullable_to_non_nullable
              as int?,
      completionPercent: freezed == completionPercent
          ? _value.completionPercent
          : completionPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      totalVideosCount: freezed == totalVideosCount
          ? _value.totalVideosCount
          : totalVideosCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTestsCount: freezed == totalTestsCount
          ? _value.totalTestsCount
          : totalTestsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      canStart: freezed == canStart
          ? _value.canStart
          : canStart // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalCertificatesCount: freezed == totalCertificatesCount
          ? _value.totalCertificatesCount
          : totalCertificatesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      courses: freezed == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseEntity>?,
      professions: freezed == professions
          ? _value.professions
          : professions // ignore: cast_nullable_to_non_nullable
              as List<ProfessionEntity>?,
      programDuration: freezed == programDuration
          ? _value.programDuration
          : programDuration // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramEntityImplCopyWith<$Res>
    implements $ProgramEntityCopyWith<$Res> {
  factory _$$ProgramEntityImplCopyWith(
          _$ProgramEntityImpl value, $Res Function(_$ProgramEntityImpl) then) =
      __$$ProgramEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? title,
      @HiveField(2) double? price,
      @HiveField(3) String? description,
      @HiveField(4) String? docOn,
      @HiveField(5) String? docNumber,
      @HiveField(6) String? status,
      @HiveField(7) String? language,
      @HiveField(8) int? languageId,
      @HiveField(9) int? statusId,
      @HiveField(10) int? organizationId,
      @HiveField(11) String? organization,
      @HiveField(12) int? courseTopicChildCount,
      @HiveField(13) int? courseTopicCount,
      @HiveField(14) String? iconFileId,
      @HiveField(15) String? backgroundColorCode,
      @HiveField(16) int? courseCount,
      @HiveField(17) double? completionPercent,
      @HiveField(18) int? totalVideosCount,
      @HiveField(19) int? totalTestsCount,
      @HiveField(20) bool? canStart,
      @HiveField(21) int? totalCertificatesCount,
      @HiveField(22) List<CourseEntity>? courses,
      @HiveField(23) List<ProfessionEntity>? professions,
      @HiveField(24) String? programDuration});
}

/// @nodoc
class __$$ProgramEntityImplCopyWithImpl<$Res>
    extends _$ProgramEntityCopyWithImpl<$Res, _$ProgramEntityImpl>
    implements _$$ProgramEntityImplCopyWith<$Res> {
  __$$ProgramEntityImplCopyWithImpl(
      _$ProgramEntityImpl _value, $Res Function(_$ProgramEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgramEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? docOn = freezed,
    Object? docNumber = freezed,
    Object? status = freezed,
    Object? language = freezed,
    Object? languageId = freezed,
    Object? statusId = freezed,
    Object? organizationId = freezed,
    Object? organization = freezed,
    Object? courseTopicChildCount = freezed,
    Object? courseTopicCount = freezed,
    Object? iconFileId = freezed,
    Object? backgroundColorCode = freezed,
    Object? courseCount = freezed,
    Object? completionPercent = freezed,
    Object? totalVideosCount = freezed,
    Object? totalTestsCount = freezed,
    Object? canStart = freezed,
    Object? totalCertificatesCount = freezed,
    Object? courses = freezed,
    Object? professions = freezed,
    Object? programDuration = freezed,
  }) {
    return _then(_$ProgramEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      docOn: freezed == docOn
          ? _value.docOn
          : docOn // ignore: cast_nullable_to_non_nullable
              as String?,
      docNumber: freezed == docNumber
          ? _value.docNumber
          : docNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      languageId: freezed == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as int?,
      statusId: freezed == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as int?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as int?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      courseTopicChildCount: freezed == courseTopicChildCount
          ? _value.courseTopicChildCount
          : courseTopicChildCount // ignore: cast_nullable_to_non_nullable
              as int?,
      courseTopicCount: freezed == courseTopicCount
          ? _value.courseTopicCount
          : courseTopicCount // ignore: cast_nullable_to_non_nullable
              as int?,
      iconFileId: freezed == iconFileId
          ? _value.iconFileId
          : iconFileId // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColorCode: freezed == backgroundColorCode
          ? _value.backgroundColorCode
          : backgroundColorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      courseCount: freezed == courseCount
          ? _value.courseCount
          : courseCount // ignore: cast_nullable_to_non_nullable
              as int?,
      completionPercent: freezed == completionPercent
          ? _value.completionPercent
          : completionPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      totalVideosCount: freezed == totalVideosCount
          ? _value.totalVideosCount
          : totalVideosCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTestsCount: freezed == totalTestsCount
          ? _value.totalTestsCount
          : totalTestsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      canStart: freezed == canStart
          ? _value.canStart
          : canStart // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalCertificatesCount: freezed == totalCertificatesCount
          ? _value.totalCertificatesCount
          : totalCertificatesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      courses: freezed == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseEntity>?,
      professions: freezed == professions
          ? _value._professions
          : professions // ignore: cast_nullable_to_non_nullable
              as List<ProfessionEntity>?,
      programDuration: freezed == programDuration
          ? _value.programDuration
          : programDuration // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramEntityImpl implements _ProgramEntity {
  _$ProgramEntityImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.title,
      @HiveField(2) this.price,
      @HiveField(3) this.description,
      @HiveField(4) this.docOn,
      @HiveField(5) this.docNumber,
      @HiveField(6) this.status,
      @HiveField(7) this.language,
      @HiveField(8) this.languageId,
      @HiveField(9) this.statusId,
      @HiveField(10) this.organizationId,
      @HiveField(11) this.organization,
      @HiveField(12) this.courseTopicChildCount,
      @HiveField(13) this.courseTopicCount,
      @HiveField(14) this.iconFileId,
      @HiveField(15) this.backgroundColorCode,
      @HiveField(16) this.courseCount,
      @HiveField(17) this.completionPercent,
      @HiveField(18) this.totalVideosCount,
      @HiveField(19) this.totalTestsCount,
      @HiveField(20) this.canStart,
      @HiveField(21) this.totalCertificatesCount,
      @HiveField(22) final List<CourseEntity>? courses,
      @HiveField(23) final List<ProfessionEntity>? professions,
      @HiveField(24) this.programDuration})
      : _courses = courses,
        _professions = professions;

  factory _$ProgramEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramEntityImplFromJson(json);

  @override
  @HiveField(0)
  final String? id;
  @override
  @HiveField(1)
  final String? title;
  @override
  @HiveField(2)
  final double? price;
  @override
  @HiveField(3)
  final String? description;
  @override
  @HiveField(4)
  final String? docOn;
  @override
  @HiveField(5)
  final String? docNumber;
  @override
  @HiveField(6)
  final String? status;
  @override
  @HiveField(7)
  final String? language;
  @override
  @HiveField(8)
  final int? languageId;
  @override
  @HiveField(9)
  final int? statusId;
  @override
  @HiveField(10)
  final int? organizationId;
  @override
  @HiveField(11)
  final String? organization;
  @override
  @HiveField(12)
  final int? courseTopicChildCount;
  @override
  @HiveField(13)
  final int? courseTopicCount;
  @override
  @HiveField(14)
  final String? iconFileId;
  @override
  @HiveField(15)
  final String? backgroundColorCode;
  @override
  @HiveField(16)
  final int? courseCount;
  @override
  @HiveField(17)
  final double? completionPercent;
  @override
  @HiveField(18)
  final int? totalVideosCount;
  @override
  @HiveField(19)
  final int? totalTestsCount;
  @override
  @HiveField(20)
  final bool? canStart;
  @override
  @HiveField(21)
  final int? totalCertificatesCount;
  final List<CourseEntity>? _courses;
  @override
  @HiveField(22)
  List<CourseEntity>? get courses {
    final value = _courses;
    if (value == null) return null;
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProfessionEntity>? _professions;
  @override
  @HiveField(23)
  List<ProfessionEntity>? get professions {
    final value = _professions;
    if (value == null) return null;
    if (_professions is EqualUnmodifiableListView) return _professions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(24)
  final String? programDuration;

  @override
  String toString() {
    return 'ProgramEntity(id: $id, title: $title, price: $price, description: $description, docOn: $docOn, docNumber: $docNumber, status: $status, language: $language, languageId: $languageId, statusId: $statusId, organizationId: $organizationId, organization: $organization, courseTopicChildCount: $courseTopicChildCount, courseTopicCount: $courseTopicCount, iconFileId: $iconFileId, backgroundColorCode: $backgroundColorCode, courseCount: $courseCount, completionPercent: $completionPercent, totalVideosCount: $totalVideosCount, totalTestsCount: $totalTestsCount, canStart: $canStart, totalCertificatesCount: $totalCertificatesCount, courses: $courses, professions: $professions, programDuration: $programDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.docOn, docOn) || other.docOn == docOn) &&
            (identical(other.docNumber, docNumber) ||
                other.docNumber == docNumber) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageId, languageId) ||
                other.languageId == languageId) &&
            (identical(other.statusId, statusId) ||
                other.statusId == statusId) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.courseTopicChildCount, courseTopicChildCount) ||
                other.courseTopicChildCount == courseTopicChildCount) &&
            (identical(other.courseTopicCount, courseTopicCount) ||
                other.courseTopicCount == courseTopicCount) &&
            (identical(other.iconFileId, iconFileId) ||
                other.iconFileId == iconFileId) &&
            (identical(other.backgroundColorCode, backgroundColorCode) ||
                other.backgroundColorCode == backgroundColorCode) &&
            (identical(other.courseCount, courseCount) ||
                other.courseCount == courseCount) &&
            (identical(other.completionPercent, completionPercent) ||
                other.completionPercent == completionPercent) &&
            (identical(other.totalVideosCount, totalVideosCount) ||
                other.totalVideosCount == totalVideosCount) &&
            (identical(other.totalTestsCount, totalTestsCount) ||
                other.totalTestsCount == totalTestsCount) &&
            (identical(other.canStart, canStart) ||
                other.canStart == canStart) &&
            (identical(other.totalCertificatesCount, totalCertificatesCount) ||
                other.totalCertificatesCount == totalCertificatesCount) &&
            const DeepCollectionEquality().equals(other._courses, _courses) &&
            const DeepCollectionEquality()
                .equals(other._professions, _professions) &&
            (identical(other.programDuration, programDuration) ||
                other.programDuration == programDuration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        price,
        description,
        docOn,
        docNumber,
        status,
        language,
        languageId,
        statusId,
        organizationId,
        organization,
        courseTopicChildCount,
        courseTopicCount,
        iconFileId,
        backgroundColorCode,
        courseCount,
        completionPercent,
        totalVideosCount,
        totalTestsCount,
        canStart,
        totalCertificatesCount,
        const DeepCollectionEquality().hash(_courses),
        const DeepCollectionEquality().hash(_professions),
        programDuration
      ]);

  /// Create a copy of ProgramEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramEntityImplCopyWith<_$ProgramEntityImpl> get copyWith =>
      __$$ProgramEntityImplCopyWithImpl<_$ProgramEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramEntityImplToJson(
      this,
    );
  }
}

abstract class _ProgramEntity implements ProgramEntity {
  factory _ProgramEntity(
      {@HiveField(0) final String? id,
      @HiveField(1) final String? title,
      @HiveField(2) final double? price,
      @HiveField(3) final String? description,
      @HiveField(4) final String? docOn,
      @HiveField(5) final String? docNumber,
      @HiveField(6) final String? status,
      @HiveField(7) final String? language,
      @HiveField(8) final int? languageId,
      @HiveField(9) final int? statusId,
      @HiveField(10) final int? organizationId,
      @HiveField(11) final String? organization,
      @HiveField(12) final int? courseTopicChildCount,
      @HiveField(13) final int? courseTopicCount,
      @HiveField(14) final String? iconFileId,
      @HiveField(15) final String? backgroundColorCode,
      @HiveField(16) final int? courseCount,
      @HiveField(17) final double? completionPercent,
      @HiveField(18) final int? totalVideosCount,
      @HiveField(19) final int? totalTestsCount,
      @HiveField(20) final bool? canStart,
      @HiveField(21) final int? totalCertificatesCount,
      @HiveField(22) final List<CourseEntity>? courses,
      @HiveField(23) final List<ProfessionEntity>? professions,
      @HiveField(24) final String? programDuration}) = _$ProgramEntityImpl;

  factory _ProgramEntity.fromJson(Map<String, dynamic> json) =
      _$ProgramEntityImpl.fromJson;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  String? get title;
  @override
  @HiveField(2)
  double? get price;
  @override
  @HiveField(3)
  String? get description;
  @override
  @HiveField(4)
  String? get docOn;
  @override
  @HiveField(5)
  String? get docNumber;
  @override
  @HiveField(6)
  String? get status;
  @override
  @HiveField(7)
  String? get language;
  @override
  @HiveField(8)
  int? get languageId;
  @override
  @HiveField(9)
  int? get statusId;
  @override
  @HiveField(10)
  int? get organizationId;
  @override
  @HiveField(11)
  String? get organization;
  @override
  @HiveField(12)
  int? get courseTopicChildCount;
  @override
  @HiveField(13)
  int? get courseTopicCount;
  @override
  @HiveField(14)
  String? get iconFileId;
  @override
  @HiveField(15)
  String? get backgroundColorCode;
  @override
  @HiveField(16)
  int? get courseCount;
  @override
  @HiveField(17)
  double? get completionPercent;
  @override
  @HiveField(18)
  int? get totalVideosCount;
  @override
  @HiveField(19)
  int? get totalTestsCount;
  @override
  @HiveField(20)
  bool? get canStart;
  @override
  @HiveField(21)
  int? get totalCertificatesCount;
  @override
  @HiveField(22)
  List<CourseEntity>? get courses;
  @override
  @HiveField(23)
  List<ProfessionEntity>? get professions;
  @override
  @HiveField(24)
  String? get programDuration;

  /// Create a copy of ProgramEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramEntityImplCopyWith<_$ProgramEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseEntity _$CourseEntityFromJson(Map<String, dynamic> json) {
  return _CourseEntity.fromJson(json);
}

/// @nodoc
mixin _$CourseEntity {
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get details => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get docOn => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get releaseOn => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get docNumber => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get orderNumber => throw _privateConstructorUsedError;
  @HiveField(7)
  int? get courseDuration => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get iconFileId => throw _privateConstructorUsedError;
  @HiveField(9)
  int? get courseTypeId => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get courseType => throw _privateConstructorUsedError;
  @HiveField(11)
  int? get courseTopicCount => throw _privateConstructorUsedError;
  @HiveField(12)
  bool? get canStart => throw _privateConstructorUsedError;
  @HiveField(13)
  double? get completionPercent => throw _privateConstructorUsedError;
  @HiveField(14)
  int? get completedCourseTopicCount => throw _privateConstructorUsedError;
  @HiveField(15)
  List<TopicEntity>? get topics => throw _privateConstructorUsedError;

  /// Serializes this CourseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseEntityCopyWith<CourseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseEntityCopyWith<$Res> {
  factory $CourseEntityCopyWith(
          CourseEntity value, $Res Function(CourseEntity) then) =
      _$CourseEntityCopyWithImpl<$Res, CourseEntity>;
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? title,
      @HiveField(2) String? details,
      @HiveField(3) String? docOn,
      @HiveField(4) String? releaseOn,
      @HiveField(5) String? docNumber,
      @HiveField(6) String? orderNumber,
      @HiveField(7) int? courseDuration,
      @HiveField(8) String? iconFileId,
      @HiveField(9) int? courseTypeId,
      @HiveField(10) String? courseType,
      @HiveField(11) int? courseTopicCount,
      @HiveField(12) bool? canStart,
      @HiveField(13) double? completionPercent,
      @HiveField(14) int? completedCourseTopicCount,
      @HiveField(15) List<TopicEntity>? topics});
}

/// @nodoc
class _$CourseEntityCopyWithImpl<$Res, $Val extends CourseEntity>
    implements $CourseEntityCopyWith<$Res> {
  _$CourseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? details = freezed,
    Object? docOn = freezed,
    Object? releaseOn = freezed,
    Object? docNumber = freezed,
    Object? orderNumber = freezed,
    Object? courseDuration = freezed,
    Object? iconFileId = freezed,
    Object? courseTypeId = freezed,
    Object? courseType = freezed,
    Object? courseTopicCount = freezed,
    Object? canStart = freezed,
    Object? completionPercent = freezed,
    Object? completedCourseTopicCount = freezed,
    Object? topics = freezed,
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
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      docOn: freezed == docOn
          ? _value.docOn
          : docOn // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseOn: freezed == releaseOn
          ? _value.releaseOn
          : releaseOn // ignore: cast_nullable_to_non_nullable
              as String?,
      docNumber: freezed == docNumber
          ? _value.docNumber
          : docNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      courseDuration: freezed == courseDuration
          ? _value.courseDuration
          : courseDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      iconFileId: freezed == iconFileId
          ? _value.iconFileId
          : iconFileId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseTypeId: freezed == courseTypeId
          ? _value.courseTypeId
          : courseTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      courseType: freezed == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as String?,
      courseTopicCount: freezed == courseTopicCount
          ? _value.courseTopicCount
          : courseTopicCount // ignore: cast_nullable_to_non_nullable
              as int?,
      canStart: freezed == canStart
          ? _value.canStart
          : canStart // ignore: cast_nullable_to_non_nullable
              as bool?,
      completionPercent: freezed == completionPercent
          ? _value.completionPercent
          : completionPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      completedCourseTopicCount: freezed == completedCourseTopicCount
          ? _value.completedCourseTopicCount
          : completedCourseTopicCount // ignore: cast_nullable_to_non_nullable
              as int?,
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<TopicEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseEntityImplCopyWith<$Res>
    implements $CourseEntityCopyWith<$Res> {
  factory _$$CourseEntityImplCopyWith(
          _$CourseEntityImpl value, $Res Function(_$CourseEntityImpl) then) =
      __$$CourseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? title,
      @HiveField(2) String? details,
      @HiveField(3) String? docOn,
      @HiveField(4) String? releaseOn,
      @HiveField(5) String? docNumber,
      @HiveField(6) String? orderNumber,
      @HiveField(7) int? courseDuration,
      @HiveField(8) String? iconFileId,
      @HiveField(9) int? courseTypeId,
      @HiveField(10) String? courseType,
      @HiveField(11) int? courseTopicCount,
      @HiveField(12) bool? canStart,
      @HiveField(13) double? completionPercent,
      @HiveField(14) int? completedCourseTopicCount,
      @HiveField(15) List<TopicEntity>? topics});
}

/// @nodoc
class __$$CourseEntityImplCopyWithImpl<$Res>
    extends _$CourseEntityCopyWithImpl<$Res, _$CourseEntityImpl>
    implements _$$CourseEntityImplCopyWith<$Res> {
  __$$CourseEntityImplCopyWithImpl(
      _$CourseEntityImpl _value, $Res Function(_$CourseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? details = freezed,
    Object? docOn = freezed,
    Object? releaseOn = freezed,
    Object? docNumber = freezed,
    Object? orderNumber = freezed,
    Object? courseDuration = freezed,
    Object? iconFileId = freezed,
    Object? courseTypeId = freezed,
    Object? courseType = freezed,
    Object? courseTopicCount = freezed,
    Object? canStart = freezed,
    Object? completionPercent = freezed,
    Object? completedCourseTopicCount = freezed,
    Object? topics = freezed,
  }) {
    return _then(_$CourseEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      docOn: freezed == docOn
          ? _value.docOn
          : docOn // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseOn: freezed == releaseOn
          ? _value.releaseOn
          : releaseOn // ignore: cast_nullable_to_non_nullable
              as String?,
      docNumber: freezed == docNumber
          ? _value.docNumber
          : docNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      courseDuration: freezed == courseDuration
          ? _value.courseDuration
          : courseDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      iconFileId: freezed == iconFileId
          ? _value.iconFileId
          : iconFileId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseTypeId: freezed == courseTypeId
          ? _value.courseTypeId
          : courseTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      courseType: freezed == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as String?,
      courseTopicCount: freezed == courseTopicCount
          ? _value.courseTopicCount
          : courseTopicCount // ignore: cast_nullable_to_non_nullable
              as int?,
      canStart: freezed == canStart
          ? _value.canStart
          : canStart // ignore: cast_nullable_to_non_nullable
              as bool?,
      completionPercent: freezed == completionPercent
          ? _value.completionPercent
          : completionPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      completedCourseTopicCount: freezed == completedCourseTopicCount
          ? _value.completedCourseTopicCount
          : completedCourseTopicCount // ignore: cast_nullable_to_non_nullable
              as int?,
      topics: freezed == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<TopicEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseEntityImpl implements _CourseEntity {
  _$CourseEntityImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.title,
      @HiveField(2) this.details,
      @HiveField(3) this.docOn,
      @HiveField(4) this.releaseOn,
      @HiveField(5) this.docNumber,
      @HiveField(6) this.orderNumber,
      @HiveField(7) this.courseDuration,
      @HiveField(8) this.iconFileId,
      @HiveField(9) this.courseTypeId,
      @HiveField(10) this.courseType,
      @HiveField(11) this.courseTopicCount,
      @HiveField(12) this.canStart,
      @HiveField(13) this.completionPercent,
      @HiveField(14) this.completedCourseTopicCount,
      @HiveField(15) final List<TopicEntity>? topics})
      : _topics = topics;

  factory _$CourseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseEntityImplFromJson(json);

  @override
  @HiveField(0)
  final String? id;
  @override
  @HiveField(1)
  final String? title;
  @override
  @HiveField(2)
  final String? details;
  @override
  @HiveField(3)
  final String? docOn;
  @override
  @HiveField(4)
  final String? releaseOn;
  @override
  @HiveField(5)
  final String? docNumber;
  @override
  @HiveField(6)
  final String? orderNumber;
  @override
  @HiveField(7)
  final int? courseDuration;
  @override
  @HiveField(8)
  final String? iconFileId;
  @override
  @HiveField(9)
  final int? courseTypeId;
  @override
  @HiveField(10)
  final String? courseType;
  @override
  @HiveField(11)
  final int? courseTopicCount;
  @override
  @HiveField(12)
  final bool? canStart;
  @override
  @HiveField(13)
  final double? completionPercent;
  @override
  @HiveField(14)
  final int? completedCourseTopicCount;
  final List<TopicEntity>? _topics;
  @override
  @HiveField(15)
  List<TopicEntity>? get topics {
    final value = _topics;
    if (value == null) return null;
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CourseEntity(id: $id, title: $title, details: $details, docOn: $docOn, releaseOn: $releaseOn, docNumber: $docNumber, orderNumber: $orderNumber, courseDuration: $courseDuration, iconFileId: $iconFileId, courseTypeId: $courseTypeId, courseType: $courseType, courseTopicCount: $courseTopicCount, canStart: $canStart, completionPercent: $completionPercent, completedCourseTopicCount: $completedCourseTopicCount, topics: $topics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.docOn, docOn) || other.docOn == docOn) &&
            (identical(other.releaseOn, releaseOn) ||
                other.releaseOn == releaseOn) &&
            (identical(other.docNumber, docNumber) ||
                other.docNumber == docNumber) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.courseDuration, courseDuration) ||
                other.courseDuration == courseDuration) &&
            (identical(other.iconFileId, iconFileId) ||
                other.iconFileId == iconFileId) &&
            (identical(other.courseTypeId, courseTypeId) ||
                other.courseTypeId == courseTypeId) &&
            (identical(other.courseType, courseType) ||
                other.courseType == courseType) &&
            (identical(other.courseTopicCount, courseTopicCount) ||
                other.courseTopicCount == courseTopicCount) &&
            (identical(other.canStart, canStart) ||
                other.canStart == canStart) &&
            (identical(other.completionPercent, completionPercent) ||
                other.completionPercent == completionPercent) &&
            (identical(other.completedCourseTopicCount,
                    completedCourseTopicCount) ||
                other.completedCourseTopicCount == completedCourseTopicCount) &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      details,
      docOn,
      releaseOn,
      docNumber,
      orderNumber,
      courseDuration,
      iconFileId,
      courseTypeId,
      courseType,
      courseTopicCount,
      canStart,
      completionPercent,
      completedCourseTopicCount,
      const DeepCollectionEquality().hash(_topics));

  /// Create a copy of CourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseEntityImplCopyWith<_$CourseEntityImpl> get copyWith =>
      __$$CourseEntityImplCopyWithImpl<_$CourseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseEntityImplToJson(
      this,
    );
  }
}

abstract class _CourseEntity implements CourseEntity {
  factory _CourseEntity(
      {@HiveField(0) final String? id,
      @HiveField(1) final String? title,
      @HiveField(2) final String? details,
      @HiveField(3) final String? docOn,
      @HiveField(4) final String? releaseOn,
      @HiveField(5) final String? docNumber,
      @HiveField(6) final String? orderNumber,
      @HiveField(7) final int? courseDuration,
      @HiveField(8) final String? iconFileId,
      @HiveField(9) final int? courseTypeId,
      @HiveField(10) final String? courseType,
      @HiveField(11) final int? courseTopicCount,
      @HiveField(12) final bool? canStart,
      @HiveField(13) final double? completionPercent,
      @HiveField(14) final int? completedCourseTopicCount,
      @HiveField(15) final List<TopicEntity>? topics}) = _$CourseEntityImpl;

  factory _CourseEntity.fromJson(Map<String, dynamic> json) =
      _$CourseEntityImpl.fromJson;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  String? get title;
  @override
  @HiveField(2)
  String? get details;
  @override
  @HiveField(3)
  String? get docOn;
  @override
  @HiveField(4)
  String? get releaseOn;
  @override
  @HiveField(5)
  String? get docNumber;
  @override
  @HiveField(6)
  String? get orderNumber;
  @override
  @HiveField(7)
  int? get courseDuration;
  @override
  @HiveField(8)
  String? get iconFileId;
  @override
  @HiveField(9)
  int? get courseTypeId;
  @override
  @HiveField(10)
  String? get courseType;
  @override
  @HiveField(11)
  int? get courseTopicCount;
  @override
  @HiveField(12)
  bool? get canStart;
  @override
  @HiveField(13)
  double? get completionPercent;
  @override
  @HiveField(14)
  int? get completedCourseTopicCount;
  @override
  @HiveField(15)
  List<TopicEntity>? get topics;

  /// Create a copy of CourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseEntityImplCopyWith<_$CourseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopicEntity _$TopicEntityFromJson(Map<String, dynamic> json) {
  return _TopicEntity.fromJson(json);
}

/// @nodoc
mixin _$TopicEntity {
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get details => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get docOn => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get releaseOn => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get docNumber => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get orderNumber => throw _privateConstructorUsedError;

  /// Serializes this TopicEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopicEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopicEntityCopyWith<TopicEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicEntityCopyWith<$Res> {
  factory $TopicEntityCopyWith(
          TopicEntity value, $Res Function(TopicEntity) then) =
      _$TopicEntityCopyWithImpl<$Res, TopicEntity>;
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? title,
      @HiveField(2) String? details,
      @HiveField(3) String? docOn,
      @HiveField(4) String? releaseOn,
      @HiveField(5) String? docNumber,
      @HiveField(6) String? orderNumber});
}

/// @nodoc
class _$TopicEntityCopyWithImpl<$Res, $Val extends TopicEntity>
    implements $TopicEntityCopyWith<$Res> {
  _$TopicEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopicEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? details = freezed,
    Object? docOn = freezed,
    Object? releaseOn = freezed,
    Object? docNumber = freezed,
    Object? orderNumber = freezed,
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
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      docOn: freezed == docOn
          ? _value.docOn
          : docOn // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseOn: freezed == releaseOn
          ? _value.releaseOn
          : releaseOn // ignore: cast_nullable_to_non_nullable
              as String?,
      docNumber: freezed == docNumber
          ? _value.docNumber
          : docNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopicEntityImplCopyWith<$Res>
    implements $TopicEntityCopyWith<$Res> {
  factory _$$TopicEntityImplCopyWith(
          _$TopicEntityImpl value, $Res Function(_$TopicEntityImpl) then) =
      __$$TopicEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? title,
      @HiveField(2) String? details,
      @HiveField(3) String? docOn,
      @HiveField(4) String? releaseOn,
      @HiveField(5) String? docNumber,
      @HiveField(6) String? orderNumber});
}

/// @nodoc
class __$$TopicEntityImplCopyWithImpl<$Res>
    extends _$TopicEntityCopyWithImpl<$Res, _$TopicEntityImpl>
    implements _$$TopicEntityImplCopyWith<$Res> {
  __$$TopicEntityImplCopyWithImpl(
      _$TopicEntityImpl _value, $Res Function(_$TopicEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopicEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? details = freezed,
    Object? docOn = freezed,
    Object? releaseOn = freezed,
    Object? docNumber = freezed,
    Object? orderNumber = freezed,
  }) {
    return _then(_$TopicEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      docOn: freezed == docOn
          ? _value.docOn
          : docOn // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseOn: freezed == releaseOn
          ? _value.releaseOn
          : releaseOn // ignore: cast_nullable_to_non_nullable
              as String?,
      docNumber: freezed == docNumber
          ? _value.docNumber
          : docNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopicEntityImpl implements _TopicEntity {
  _$TopicEntityImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.title,
      @HiveField(2) this.details,
      @HiveField(3) this.docOn,
      @HiveField(4) this.releaseOn,
      @HiveField(5) this.docNumber,
      @HiveField(6) this.orderNumber});

  factory _$TopicEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicEntityImplFromJson(json);

  @override
  @HiveField(0)
  final String? id;
  @override
  @HiveField(1)
  final String? title;
  @override
  @HiveField(2)
  final String? details;
  @override
  @HiveField(3)
  final String? docOn;
  @override
  @HiveField(4)
  final String? releaseOn;
  @override
  @HiveField(5)
  final String? docNumber;
  @override
  @HiveField(6)
  final String? orderNumber;

  @override
  String toString() {
    return 'TopicEntity(id: $id, title: $title, details: $details, docOn: $docOn, releaseOn: $releaseOn, docNumber: $docNumber, orderNumber: $orderNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.docOn, docOn) || other.docOn == docOn) &&
            (identical(other.releaseOn, releaseOn) ||
                other.releaseOn == releaseOn) &&
            (identical(other.docNumber, docNumber) ||
                other.docNumber == docNumber) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, details, docOn,
      releaseOn, docNumber, orderNumber);

  /// Create a copy of TopicEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicEntityImplCopyWith<_$TopicEntityImpl> get copyWith =>
      __$$TopicEntityImplCopyWithImpl<_$TopicEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicEntityImplToJson(
      this,
    );
  }
}

abstract class _TopicEntity implements TopicEntity {
  factory _TopicEntity(
      {@HiveField(0) final String? id,
      @HiveField(1) final String? title,
      @HiveField(2) final String? details,
      @HiveField(3) final String? docOn,
      @HiveField(4) final String? releaseOn,
      @HiveField(5) final String? docNumber,
      @HiveField(6) final String? orderNumber}) = _$TopicEntityImpl;

  factory _TopicEntity.fromJson(Map<String, dynamic> json) =
      _$TopicEntityImpl.fromJson;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  String? get title;
  @override
  @HiveField(2)
  String? get details;
  @override
  @HiveField(3)
  String? get docOn;
  @override
  @HiveField(4)
  String? get releaseOn;
  @override
  @HiveField(5)
  String? get docNumber;
  @override
  @HiveField(6)
  String? get orderNumber;

  /// Create a copy of TopicEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopicEntityImplCopyWith<_$TopicEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfessionEntity _$ProfessionEntityFromJson(Map<String, dynamic> json) {
  return _ProfessionEntity.fromJson(json);
}

/// @nodoc
mixin _$ProfessionEntity {
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get details => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get docOn => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get docNumber => throw _privateConstructorUsedError;

  /// Serializes this ProfessionEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfessionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfessionEntityCopyWith<ProfessionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfessionEntityCopyWith<$Res> {
  factory $ProfessionEntityCopyWith(
          ProfessionEntity value, $Res Function(ProfessionEntity) then) =
      _$ProfessionEntityCopyWithImpl<$Res, ProfessionEntity>;
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? title,
      @HiveField(2) String? details,
      @HiveField(3) String? docOn,
      @HiveField(4) String? docNumber});
}

/// @nodoc
class _$ProfessionEntityCopyWithImpl<$Res, $Val extends ProfessionEntity>
    implements $ProfessionEntityCopyWith<$Res> {
  _$ProfessionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfessionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? details = freezed,
    Object? docOn = freezed,
    Object? docNumber = freezed,
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
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      docOn: freezed == docOn
          ? _value.docOn
          : docOn // ignore: cast_nullable_to_non_nullable
              as String?,
      docNumber: freezed == docNumber
          ? _value.docNumber
          : docNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfessionEntityImplCopyWith<$Res>
    implements $ProfessionEntityCopyWith<$Res> {
  factory _$$ProfessionEntityImplCopyWith(_$ProfessionEntityImpl value,
          $Res Function(_$ProfessionEntityImpl) then) =
      __$$ProfessionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? title,
      @HiveField(2) String? details,
      @HiveField(3) String? docOn,
      @HiveField(4) String? docNumber});
}

/// @nodoc
class __$$ProfessionEntityImplCopyWithImpl<$Res>
    extends _$ProfessionEntityCopyWithImpl<$Res, _$ProfessionEntityImpl>
    implements _$$ProfessionEntityImplCopyWith<$Res> {
  __$$ProfessionEntityImplCopyWithImpl(_$ProfessionEntityImpl _value,
      $Res Function(_$ProfessionEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfessionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? details = freezed,
    Object? docOn = freezed,
    Object? docNumber = freezed,
  }) {
    return _then(_$ProfessionEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      docOn: freezed == docOn
          ? _value.docOn
          : docOn // ignore: cast_nullable_to_non_nullable
              as String?,
      docNumber: freezed == docNumber
          ? _value.docNumber
          : docNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfessionEntityImpl implements _ProfessionEntity {
  _$ProfessionEntityImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.title,
      @HiveField(2) this.details,
      @HiveField(3) this.docOn,
      @HiveField(4) this.docNumber});

  factory _$ProfessionEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfessionEntityImplFromJson(json);

  @override
  @HiveField(0)
  final String? id;
  @override
  @HiveField(1)
  final String? title;
  @override
  @HiveField(2)
  final String? details;
  @override
  @HiveField(3)
  final String? docOn;
  @override
  @HiveField(4)
  final String? docNumber;

  @override
  String toString() {
    return 'ProfessionEntity(id: $id, title: $title, details: $details, docOn: $docOn, docNumber: $docNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfessionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.docOn, docOn) || other.docOn == docOn) &&
            (identical(other.docNumber, docNumber) ||
                other.docNumber == docNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, details, docOn, docNumber);

  /// Create a copy of ProfessionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfessionEntityImplCopyWith<_$ProfessionEntityImpl> get copyWith =>
      __$$ProfessionEntityImplCopyWithImpl<_$ProfessionEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfessionEntityImplToJson(
      this,
    );
  }
}

abstract class _ProfessionEntity implements ProfessionEntity {
  factory _ProfessionEntity(
      {@HiveField(0) final String? id,
      @HiveField(1) final String? title,
      @HiveField(2) final String? details,
      @HiveField(3) final String? docOn,
      @HiveField(4) final String? docNumber}) = _$ProfessionEntityImpl;

  factory _ProfessionEntity.fromJson(Map<String, dynamic> json) =
      _$ProfessionEntityImpl.fromJson;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  String? get title;
  @override
  @HiveField(2)
  String? get details;
  @override
  @HiveField(3)
  String? get docOn;
  @override
  @HiveField(4)
  String? get docNumber;

  /// Create a copy of ProfessionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfessionEntityImplCopyWith<_$ProfessionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
