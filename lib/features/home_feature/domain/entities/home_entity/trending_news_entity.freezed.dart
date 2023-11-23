// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_news_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrendingNewsEntity {
  List<NewsEntity> get data => throw _privateConstructorUsedError;
  MetaEntity get meta => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrendingNewsEntityCopyWith<TrendingNewsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingNewsEntityCopyWith<$Res> {
  factory $TrendingNewsEntityCopyWith(
          TrendingNewsEntity value, $Res Function(TrendingNewsEntity) then) =
      _$TrendingNewsEntityCopyWithImpl<$Res, TrendingNewsEntity>;
  @useResult
  $Res call({List<NewsEntity> data, MetaEntity meta});

  $MetaEntityCopyWith<$Res> get meta;
}

/// @nodoc
class _$TrendingNewsEntityCopyWithImpl<$Res, $Val extends TrendingNewsEntity>
    implements $TrendingNewsEntityCopyWith<$Res> {
  _$TrendingNewsEntityCopyWithImpl(this._value, this._then);

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
              as List<NewsEntity>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaEntityCopyWith<$Res> get meta {
    return $MetaEntityCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrendingNewsEntityImplCopyWith<$Res>
    implements $TrendingNewsEntityCopyWith<$Res> {
  factory _$$TrendingNewsEntityImplCopyWith(_$TrendingNewsEntityImpl value,
          $Res Function(_$TrendingNewsEntityImpl) then) =
      __$$TrendingNewsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NewsEntity> data, MetaEntity meta});

  @override
  $MetaEntityCopyWith<$Res> get meta;
}

/// @nodoc
class __$$TrendingNewsEntityImplCopyWithImpl<$Res>
    extends _$TrendingNewsEntityCopyWithImpl<$Res, _$TrendingNewsEntityImpl>
    implements _$$TrendingNewsEntityImplCopyWith<$Res> {
  __$$TrendingNewsEntityImplCopyWithImpl(_$TrendingNewsEntityImpl _value,
      $Res Function(_$TrendingNewsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_$TrendingNewsEntityImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaEntity,
    ));
  }
}

/// @nodoc

class _$TrendingNewsEntityImpl implements _TrendingNewsEntity {
  const _$TrendingNewsEntityImpl(
      {required final List<NewsEntity> data, required this.meta})
      : _data = data;

  final List<NewsEntity> _data;
  @override
  List<NewsEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final MetaEntity meta;

  @override
  String toString() {
    return 'TrendingNewsEntity(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingNewsEntityImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingNewsEntityImplCopyWith<_$TrendingNewsEntityImpl> get copyWith =>
      __$$TrendingNewsEntityImplCopyWithImpl<_$TrendingNewsEntityImpl>(
          this, _$identity);
}

abstract class _TrendingNewsEntity implements TrendingNewsEntity {
  const factory _TrendingNewsEntity(
      {required final List<NewsEntity> data,
      required final MetaEntity meta}) = _$TrendingNewsEntityImpl;

  @override
  List<NewsEntity> get data;
  @override
  MetaEntity get meta;
  @override
  @JsonKey(ignore: true)
  _$$TrendingNewsEntityImplCopyWith<_$TrendingNewsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
