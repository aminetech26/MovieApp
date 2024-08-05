// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cast_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CastResultModel _$CastResultModelFromJson(Map<String, dynamic> json) {
  return _CastResultModel.fromJson(json);
}

/// @nodoc
mixin _$CastResultModel {
  int get id => throw _privateConstructorUsedError;
  List<CastModel> get cast => throw _privateConstructorUsedError;
  List<Crew> get crew => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastResultModelCopyWith<CastResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastResultModelCopyWith<$Res> {
  factory $CastResultModelCopyWith(
          CastResultModel value, $Res Function(CastResultModel) then) =
      _$CastResultModelCopyWithImpl<$Res, CastResultModel>;
  @useResult
  $Res call({int id, List<CastModel> cast, List<Crew> crew});
}

/// @nodoc
class _$CastResultModelCopyWithImpl<$Res, $Val extends CastResultModel>
    implements $CastResultModelCopyWith<$Res> {
  _$CastResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cast = null,
    Object? crew = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cast: null == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<CastModel>,
      crew: null == crew
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<Crew>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CastResultModelImplCopyWith<$Res>
    implements $CastResultModelCopyWith<$Res> {
  factory _$$CastResultModelImplCopyWith(_$CastResultModelImpl value,
          $Res Function(_$CastResultModelImpl) then) =
      __$$CastResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<CastModel> cast, List<Crew> crew});
}

/// @nodoc
class __$$CastResultModelImplCopyWithImpl<$Res>
    extends _$CastResultModelCopyWithImpl<$Res, _$CastResultModelImpl>
    implements _$$CastResultModelImplCopyWith<$Res> {
  __$$CastResultModelImplCopyWithImpl(
      _$CastResultModelImpl _value, $Res Function(_$CastResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cast = null,
    Object? crew = null,
  }) {
    return _then(_$CastResultModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cast: null == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<CastModel>,
      crew: null == crew
          ? _value._crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<Crew>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CastResultModelImpl implements _CastResultModel {
  const _$CastResultModelImpl(
      {required this.id,
      required final List<CastModel> cast,
      required final List<Crew> crew})
      : _cast = cast,
        _crew = crew;

  factory _$CastResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CastResultModelImplFromJson(json);

  @override
  final int id;
  final List<CastModel> _cast;
  @override
  List<CastModel> get cast {
    if (_cast is EqualUnmodifiableListView) return _cast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cast);
  }

  final List<Crew> _crew;
  @override
  List<Crew> get crew {
    if (_crew is EqualUnmodifiableListView) return _crew;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crew);
  }

  @override
  String toString() {
    return 'CastResultModel(id: $id, cast: $cast, crew: $crew)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CastResultModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._cast, _cast) &&
            const DeepCollectionEquality().equals(other._crew, _crew));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_cast),
      const DeepCollectionEquality().hash(_crew));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CastResultModelImplCopyWith<_$CastResultModelImpl> get copyWith =>
      __$$CastResultModelImplCopyWithImpl<_$CastResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CastResultModelImplToJson(
      this,
    );
  }
}

abstract class _CastResultModel implements CastResultModel {
  const factory _CastResultModel(
      {required final int id,
      required final List<CastModel> cast,
      required final List<Crew> crew}) = _$CastResultModelImpl;

  factory _CastResultModel.fromJson(Map<String, dynamic> json) =
      _$CastResultModelImpl.fromJson;

  @override
  int get id;
  @override
  List<CastModel> get cast;
  @override
  List<Crew> get crew;
  @override
  @JsonKey(ignore: true)
  _$$CastResultModelImplCopyWith<_$CastResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CastModel _$CastModelFromJson(Map<String, dynamic> json) {
  return _CastModel.fromJson(json);
}

/// @nodoc
mixin _$CastModel {
  int get castId => throw _privateConstructorUsedError;
  String get character => throw _privateConstructorUsedError;
  String get creditId => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  String get profilePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastModelCopyWith<CastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastModelCopyWith<$Res> {
  factory $CastModelCopyWith(CastModel value, $Res Function(CastModel) then) =
      _$CastModelCopyWithImpl<$Res, CastModel>;
  @useResult
  $Res call(
      {int castId,
      String character,
      String creditId,
      int gender,
      int id,
      String name,
      int order,
      String profilePath});
}

/// @nodoc
class _$CastModelCopyWithImpl<$Res, $Val extends CastModel>
    implements $CastModelCopyWith<$Res> {
  _$CastModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? castId = null,
    Object? character = null,
    Object? creditId = null,
    Object? gender = null,
    Object? id = null,
    Object? name = null,
    Object? order = null,
    Object? profilePath = null,
  }) {
    return _then(_value.copyWith(
      castId: null == castId
          ? _value.castId
          : castId // ignore: cast_nullable_to_non_nullable
              as int,
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
      creditId: null == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      profilePath: null == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CastModelImplCopyWith<$Res>
    implements $CastModelCopyWith<$Res> {
  factory _$$CastModelImplCopyWith(
          _$CastModelImpl value, $Res Function(_$CastModelImpl) then) =
      __$$CastModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int castId,
      String character,
      String creditId,
      int gender,
      int id,
      String name,
      int order,
      String profilePath});
}

/// @nodoc
class __$$CastModelImplCopyWithImpl<$Res>
    extends _$CastModelCopyWithImpl<$Res, _$CastModelImpl>
    implements _$$CastModelImplCopyWith<$Res> {
  __$$CastModelImplCopyWithImpl(
      _$CastModelImpl _value, $Res Function(_$CastModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? castId = null,
    Object? character = null,
    Object? creditId = null,
    Object? gender = null,
    Object? id = null,
    Object? name = null,
    Object? order = null,
    Object? profilePath = null,
  }) {
    return _then(_$CastModelImpl(
      castId: null == castId
          ? _value.castId
          : castId // ignore: cast_nullable_to_non_nullable
              as int,
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
      creditId: null == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      profilePath: null == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CastModelImpl implements _CastModel {
  const _$CastModelImpl(
      {required this.castId,
      required this.character,
      required this.creditId,
      required this.gender,
      required this.id,
      required this.name,
      required this.order,
      required this.profilePath});

  factory _$CastModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CastModelImplFromJson(json);

  @override
  final int castId;
  @override
  final String character;
  @override
  final String creditId;
  @override
  final int gender;
  @override
  final int id;
  @override
  final String name;
  @override
  final int order;
  @override
  final String profilePath;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CastModelImplCopyWith<_$CastModelImpl> get copyWith =>
      __$$CastModelImplCopyWithImpl<_$CastModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CastModelImplToJson(
      this,
    );
  }
  
  @override
  // TODO: implement caractere
  String get caractere => throw UnimplementedError();
  
  @override
  // TODO: implement posterPath
  String get posterPath => throw UnimplementedError();
  
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
  
  @override
  // TODO: implement stringify
  bool? get stringify => throw UnimplementedError();
}

abstract class _CastModel implements CastModel {
  const factory _CastModel(
      {required final int castId,
      required final String character,
      required final String creditId,
      required final int gender,
      required final int id,
      required final String name,
      required final int order,
      required final String profilePath}) = _$CastModelImpl;

  factory _CastModel.fromJson(Map<String, dynamic> json) =
      _$CastModelImpl.fromJson;

  @override
  int get castId;
  @override
  String get character;
  @override
  String get creditId;
  @override
  int get gender;
  @override
  int get id;
  @override
  String get name;
  @override
  int get order;
  @override
  String get profilePath;
  @override
  @JsonKey(ignore: true)
  _$$CastModelImplCopyWith<_$CastModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Crew _$CrewFromJson(Map<String, dynamic> json) {
  return _Crew.fromJson(json);
}

/// @nodoc
mixin _$Crew {
  String get creditId => throw _privateConstructorUsedError;
  String get department => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get job => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get profilePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CrewCopyWith<Crew> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrewCopyWith<$Res> {
  factory $CrewCopyWith(Crew value, $Res Function(Crew) then) =
      _$CrewCopyWithImpl<$Res, Crew>;
  @useResult
  $Res call(
      {String creditId,
      String department,
      int gender,
      int id,
      String job,
      String name,
      String profilePath});
}

/// @nodoc
class _$CrewCopyWithImpl<$Res, $Val extends Crew>
    implements $CrewCopyWith<$Res> {
  _$CrewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditId = null,
    Object? department = null,
    Object? gender = null,
    Object? id = null,
    Object? job = null,
    Object? name = null,
    Object? profilePath = null,
  }) {
    return _then(_value.copyWith(
      creditId: null == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePath: null == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CrewImplCopyWith<$Res> implements $CrewCopyWith<$Res> {
  factory _$$CrewImplCopyWith(
          _$CrewImpl value, $Res Function(_$CrewImpl) then) =
      __$$CrewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String creditId,
      String department,
      int gender,
      int id,
      String job,
      String name,
      String profilePath});
}

/// @nodoc
class __$$CrewImplCopyWithImpl<$Res>
    extends _$CrewCopyWithImpl<$Res, _$CrewImpl>
    implements _$$CrewImplCopyWith<$Res> {
  __$$CrewImplCopyWithImpl(_$CrewImpl _value, $Res Function(_$CrewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditId = null,
    Object? department = null,
    Object? gender = null,
    Object? id = null,
    Object? job = null,
    Object? name = null,
    Object? profilePath = null,
  }) {
    return _then(_$CrewImpl(
      creditId: null == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePath: null == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CrewImpl implements _Crew {
  const _$CrewImpl(
      {required this.creditId,
      required this.department,
      required this.gender,
      required this.id,
      required this.job,
      required this.name,
      required this.profilePath});

  factory _$CrewImpl.fromJson(Map<String, dynamic> json) =>
      _$$CrewImplFromJson(json);

  @override
  final String creditId;
  @override
  final String department;
  @override
  final int gender;
  @override
  final int id;
  @override
  final String job;
  @override
  final String name;
  @override
  final String profilePath;

  @override
  String toString() {
    return 'Crew(creditId: $creditId, department: $department, gender: $gender, id: $id, job: $job, name: $name, profilePath: $profilePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CrewImpl &&
            (identical(other.creditId, creditId) ||
                other.creditId == creditId) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, creditId, department, gender, id, job, name, profilePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CrewImplCopyWith<_$CrewImpl> get copyWith =>
      __$$CrewImplCopyWithImpl<_$CrewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CrewImplToJson(
      this,
    );
  }
}

abstract class _Crew implements Crew {
  const factory _Crew(
      {required final String creditId,
      required final String department,
      required final int gender,
      required final int id,
      required final String job,
      required final String name,
      required final String profilePath}) = _$CrewImpl;

  factory _Crew.fromJson(Map<String, dynamic> json) = _$CrewImpl.fromJson;

  @override
  String get creditId;
  @override
  String get department;
  @override
  int get gender;
  @override
  int get id;
  @override
  String get job;
  @override
  String get name;
  @override
  String get profilePath;
  @override
  @JsonKey(ignore: true)
  _$$CrewImplCopyWith<_$CrewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
