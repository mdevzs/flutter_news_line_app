// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'countries_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountriesModel _$CountriesModelFromJson(Map<String, dynamic> json) {
  return _CountriesModel.fromJson(json);
}

/// @nodoc
mixin _$CountriesModel {
  List<CountriesDataModel> get data => throw _privateConstructorUsedError;
  CountriesMetaModel get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountriesModelCopyWith<CountriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesModelCopyWith<$Res> {
  factory $CountriesModelCopyWith(
          CountriesModel value, $Res Function(CountriesModel) then) =
      _$CountriesModelCopyWithImpl<$Res, CountriesModel>;
  @useResult
  $Res call({List<CountriesDataModel> data, CountriesMetaModel meta});

  $CountriesMetaModelCopyWith<$Res> get meta;
}

/// @nodoc
class _$CountriesModelCopyWithImpl<$Res, $Val extends CountriesModel>
    implements $CountriesModelCopyWith<$Res> {
  _$CountriesModelCopyWithImpl(this._value, this._then);

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
              as List<CountriesDataModel>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as CountriesMetaModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountriesMetaModelCopyWith<$Res> get meta {
    return $CountriesMetaModelCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CountriesModelImplCopyWith<$Res>
    implements $CountriesModelCopyWith<$Res> {
  factory _$$CountriesModelImplCopyWith(_$CountriesModelImpl value,
          $Res Function(_$CountriesModelImpl) then) =
      __$$CountriesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CountriesDataModel> data, CountriesMetaModel meta});

  @override
  $CountriesMetaModelCopyWith<$Res> get meta;
}

/// @nodoc
class __$$CountriesModelImplCopyWithImpl<$Res>
    extends _$CountriesModelCopyWithImpl<$Res, _$CountriesModelImpl>
    implements _$$CountriesModelImplCopyWith<$Res> {
  __$$CountriesModelImplCopyWithImpl(
      _$CountriesModelImpl _value, $Res Function(_$CountriesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_$CountriesModelImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CountriesDataModel>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as CountriesMetaModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountriesModelImpl extends _CountriesModel {
  const _$CountriesModelImpl(
      {required final List<CountriesDataModel> data, required this.meta})
      : _data = data,
        super._();

  factory _$CountriesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountriesModelImplFromJson(json);

  final List<CountriesDataModel> _data;
  @override
  List<CountriesDataModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final CountriesMetaModel meta;

  @override
  String toString() {
    return 'CountriesModel(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountriesModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountriesModelImplCopyWith<_$CountriesModelImpl> get copyWith =>
      __$$CountriesModelImplCopyWithImpl<_$CountriesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountriesModelImplToJson(
      this,
    );
  }
}

abstract class _CountriesModel extends CountriesModel {
  const factory _CountriesModel(
      {required final List<CountriesDataModel> data,
      required final CountriesMetaModel meta}) = _$CountriesModelImpl;
  const _CountriesModel._() : super._();

  factory _CountriesModel.fromJson(Map<String, dynamic> json) =
      _$CountriesModelImpl.fromJson;

  @override
  List<CountriesDataModel> get data;
  @override
  CountriesMetaModel get meta;
  @override
  @JsonKey(ignore: true)
  _$$CountriesModelImplCopyWith<_$CountriesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
