// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'countries_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountriesDataModel _$CountriesDataModelFromJson(Map<String, dynamic> json) {
  return _CountriesDataModel.fromJson(json);
}

/// @nodoc
mixin _$CountriesDataModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get flag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountriesDataModelCopyWith<CountriesDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesDataModelCopyWith<$Res> {
  factory $CountriesDataModelCopyWith(
          CountriesDataModel value, $Res Function(CountriesDataModel) then) =
      _$CountriesDataModelCopyWithImpl<$Res, CountriesDataModel>;
  @useResult
  $Res call({int id, String name, String flag});
}

/// @nodoc
class _$CountriesDataModelCopyWithImpl<$Res, $Val extends CountriesDataModel>
    implements $CountriesDataModelCopyWith<$Res> {
  _$CountriesDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? flag = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountriesDataModelImplCopyWith<$Res>
    implements $CountriesDataModelCopyWith<$Res> {
  factory _$$CountriesDataModelImplCopyWith(_$CountriesDataModelImpl value,
          $Res Function(_$CountriesDataModelImpl) then) =
      __$$CountriesDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String flag});
}

/// @nodoc
class __$$CountriesDataModelImplCopyWithImpl<$Res>
    extends _$CountriesDataModelCopyWithImpl<$Res, _$CountriesDataModelImpl>
    implements _$$CountriesDataModelImplCopyWith<$Res> {
  __$$CountriesDataModelImplCopyWithImpl(_$CountriesDataModelImpl _value,
      $Res Function(_$CountriesDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? flag = null,
  }) {
    return _then(_$CountriesDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountriesDataModelImpl extends _CountriesDataModel {
  const _$CountriesDataModelImpl(
      {required this.id, required this.name, required this.flag})
      : super._();

  factory _$CountriesDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountriesDataModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String flag;

  @override
  String toString() {
    return 'CountriesDataModel(id: $id, name: $name, flag: $flag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountriesDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.flag, flag) || other.flag == flag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, flag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountriesDataModelImplCopyWith<_$CountriesDataModelImpl> get copyWith =>
      __$$CountriesDataModelImplCopyWithImpl<_$CountriesDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountriesDataModelImplToJson(
      this,
    );
  }
}

abstract class _CountriesDataModel extends CountriesDataModel {
  const factory _CountriesDataModel(
      {required final int id,
      required final String name,
      required final String flag}) = _$CountriesDataModelImpl;
  const _CountriesDataModel._() : super._();

  factory _CountriesDataModel.fromJson(Map<String, dynamic> json) =
      _$CountriesDataModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get flag;
  @override
  @JsonKey(ignore: true)
  _$$CountriesDataModelImplCopyWith<_$CountriesDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
