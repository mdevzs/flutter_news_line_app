// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'countries_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CountriesEntity {
  List<CountriesDataEntity> get data => throw _privateConstructorUsedError;
  CountriesMetaEntity get meta => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountriesEntityCopyWith<CountriesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesEntityCopyWith<$Res> {
  factory $CountriesEntityCopyWith(
          CountriesEntity value, $Res Function(CountriesEntity) then) =
      _$CountriesEntityCopyWithImpl<$Res, CountriesEntity>;
  @useResult
  $Res call({List<CountriesDataEntity> data, CountriesMetaEntity meta});

  $CountriesMetaEntityCopyWith<$Res> get meta;
}

/// @nodoc
class _$CountriesEntityCopyWithImpl<$Res, $Val extends CountriesEntity>
    implements $CountriesEntityCopyWith<$Res> {
  _$CountriesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CountriesDataEntity>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as CountriesMetaEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountriesMetaEntityCopyWith<$Res> get meta {
    return $CountriesMetaEntityCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CountriesEntityImplCopyWith<$Res>
    implements $CountriesEntityCopyWith<$Res> {
  factory _$$CountriesEntityImplCopyWith(_$CountriesEntityImpl value,
          $Res Function(_$CountriesEntityImpl) then) =
      __$$CountriesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CountriesDataEntity> data, CountriesMetaEntity meta});

  @override
  $CountriesMetaEntityCopyWith<$Res> get meta;
}

/// @nodoc
class __$$CountriesEntityImplCopyWithImpl<$Res>
    extends _$CountriesEntityCopyWithImpl<$Res, _$CountriesEntityImpl>
    implements _$$CountriesEntityImplCopyWith<$Res> {
  __$$CountriesEntityImplCopyWithImpl(
      _$CountriesEntityImpl _value, $Res Function(_$CountriesEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_$CountriesEntityImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CountriesDataEntity>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as CountriesMetaEntity,
    ));
  }
}

/// @nodoc

class _$CountriesEntityImpl implements _CountriesEntity {
  const _$CountriesEntityImpl(
      {required final List<CountriesDataEntity> data, required this.meta})
      : _data = data;

  final List<CountriesDataEntity> _data;
  @override
  List<CountriesDataEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final CountriesMetaEntity meta;

  @override
  String toString() {
    return 'CountriesEntity(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountriesEntityImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountriesEntityImplCopyWith<_$CountriesEntityImpl> get copyWith =>
      __$$CountriesEntityImplCopyWithImpl<_$CountriesEntityImpl>(
          this, _$identity);
}

abstract class _CountriesEntity implements CountriesEntity {
  const factory _CountriesEntity(
      {required final List<CountriesDataEntity> data,
      required final CountriesMetaEntity meta}) = _$CountriesEntityImpl;

  @override
  List<CountriesDataEntity> get data;
  @override
  CountriesMetaEntity get meta;
  @override
  @JsonKey(ignore: true)
  _$$CountriesEntityImplCopyWith<_$CountriesEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
