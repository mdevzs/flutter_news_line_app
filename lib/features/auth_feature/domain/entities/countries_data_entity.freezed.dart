// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'countries_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CountriesDataEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get flag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountriesDataEntityCopyWith<CountriesDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesDataEntityCopyWith<$Res> {
  factory $CountriesDataEntityCopyWith(
          CountriesDataEntity value, $Res Function(CountriesDataEntity) then) =
      _$CountriesDataEntityCopyWithImpl<$Res, CountriesDataEntity>;
  @useResult
  $Res call({int id, String name, String flag});
}

/// @nodoc
class _$CountriesDataEntityCopyWithImpl<$Res, $Val extends CountriesDataEntity>
    implements $CountriesDataEntityCopyWith<$Res> {
  _$CountriesDataEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$CountriesDataEntityImplCopyWith<$Res>
    implements $CountriesDataEntityCopyWith<$Res> {
  factory _$$CountriesDataEntityImplCopyWith(_$CountriesDataEntityImpl value,
          $Res Function(_$CountriesDataEntityImpl) then) =
      __$$CountriesDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String flag});
}

/// @nodoc
class __$$CountriesDataEntityImplCopyWithImpl<$Res>
    extends _$CountriesDataEntityCopyWithImpl<$Res, _$CountriesDataEntityImpl>
    implements _$$CountriesDataEntityImplCopyWith<$Res> {
  __$$CountriesDataEntityImplCopyWithImpl(_$CountriesDataEntityImpl _value,
      $Res Function(_$CountriesDataEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? flag = null,
  }) {
    return _then(_$CountriesDataEntityImpl(
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

class _$CountriesDataEntityImpl implements _CountriesDataEntity {
  const _$CountriesDataEntityImpl(
      {required this.id, required this.name, required this.flag});

  @override
  final int id;
  @override
  final String name;
  @override
  final String flag;

  @override
  String toString() {
    return 'CountriesDataEntity(id: $id, name: $name, flag: $flag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountriesDataEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.flag, flag) || other.flag == flag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, flag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountriesDataEntityImplCopyWith<_$CountriesDataEntityImpl> get copyWith =>
      __$$CountriesDataEntityImplCopyWithImpl<_$CountriesDataEntityImpl>(
          this, _$identity);
}

abstract class _CountriesDataEntity implements CountriesDataEntity {
  const factory _CountriesDataEntity(
      {required final int id,
      required final String name,
      required final String flag}) = _$CountriesDataEntityImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get flag;
  @override
  @JsonKey(ignore: true)
  _$$CountriesDataEntityImplCopyWith<_$CountriesDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
