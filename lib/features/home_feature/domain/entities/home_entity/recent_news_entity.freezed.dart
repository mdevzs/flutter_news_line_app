// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_news_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecentNewsEntity {
  List<NewsEntity> get data => throw _privateConstructorUsedError;
  MetaEntity get meta => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecentNewsEntityCopyWith<RecentNewsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentNewsEntityCopyWith<$Res> {
  factory $RecentNewsEntityCopyWith(
          RecentNewsEntity value, $Res Function(RecentNewsEntity) then) =
      _$RecentNewsEntityCopyWithImpl<$Res, RecentNewsEntity>;
  @useResult
  $Res call({List<NewsEntity> data, MetaEntity meta});

  $MetaEntityCopyWith<$Res> get meta;
}

/// @nodoc
class _$RecentNewsEntityCopyWithImpl<$Res, $Val extends RecentNewsEntity>
    implements $RecentNewsEntityCopyWith<$Res> {
  _$RecentNewsEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$RecentNewsEntityImplCopyWith<$Res>
    implements $RecentNewsEntityCopyWith<$Res> {
  factory _$$RecentNewsEntityImplCopyWith(_$RecentNewsEntityImpl value,
          $Res Function(_$RecentNewsEntityImpl) then) =
      __$$RecentNewsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NewsEntity> data, MetaEntity meta});

  @override
  $MetaEntityCopyWith<$Res> get meta;
}

/// @nodoc
class __$$RecentNewsEntityImplCopyWithImpl<$Res>
    extends _$RecentNewsEntityCopyWithImpl<$Res, _$RecentNewsEntityImpl>
    implements _$$RecentNewsEntityImplCopyWith<$Res> {
  __$$RecentNewsEntityImplCopyWithImpl(_$RecentNewsEntityImpl _value,
      $Res Function(_$RecentNewsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_$RecentNewsEntityImpl(
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

class _$RecentNewsEntityImpl implements _RecentNewsEntity {
  const _$RecentNewsEntityImpl(
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
    return 'RecentNewsEntity(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentNewsEntityImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentNewsEntityImplCopyWith<_$RecentNewsEntityImpl> get copyWith =>
      __$$RecentNewsEntityImplCopyWithImpl<_$RecentNewsEntityImpl>(
          this, _$identity);
}

abstract class _RecentNewsEntity implements RecentNewsEntity {
  const factory _RecentNewsEntity(
      {required final List<NewsEntity> data,
      required final MetaEntity meta}) = _$RecentNewsEntityImpl;

  @override
  List<NewsEntity> get data;
  @override
  MetaEntity get meta;
  @override
  @JsonKey(ignore: true)
  _$$RecentNewsEntityImplCopyWith<_$RecentNewsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
