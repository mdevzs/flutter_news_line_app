// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrendingNewsModel _$TrendingNewsModelFromJson(Map<String, dynamic> json) {
  return _TrendingNewsModel.fromJson(json);
}

/// @nodoc
mixin _$TrendingNewsModel {
  List<NewsModel> get data => throw _privateConstructorUsedError;
  MetaModel get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrendingNewsModelCopyWith<TrendingNewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingNewsModelCopyWith<$Res> {
  factory $TrendingNewsModelCopyWith(
          TrendingNewsModel value, $Res Function(TrendingNewsModel) then) =
      _$TrendingNewsModelCopyWithImpl<$Res, TrendingNewsModel>;
  @useResult
  $Res call({List<NewsModel> data, MetaModel meta});

  $MetaModelCopyWith<$Res> get meta;
}

/// @nodoc
class _$TrendingNewsModelCopyWithImpl<$Res, $Val extends TrendingNewsModel>
    implements $TrendingNewsModelCopyWith<$Res> {
  _$TrendingNewsModelCopyWithImpl(this._value, this._then);

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
              as List<NewsModel>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaModelCopyWith<$Res> get meta {
    return $MetaModelCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrendingNewsModelImplCopyWith<$Res>
    implements $TrendingNewsModelCopyWith<$Res> {
  factory _$$TrendingNewsModelImplCopyWith(_$TrendingNewsModelImpl value,
          $Res Function(_$TrendingNewsModelImpl) then) =
      __$$TrendingNewsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NewsModel> data, MetaModel meta});

  @override
  $MetaModelCopyWith<$Res> get meta;
}

/// @nodoc
class __$$TrendingNewsModelImplCopyWithImpl<$Res>
    extends _$TrendingNewsModelCopyWithImpl<$Res, _$TrendingNewsModelImpl>
    implements _$$TrendingNewsModelImplCopyWith<$Res> {
  __$$TrendingNewsModelImplCopyWithImpl(_$TrendingNewsModelImpl _value,
      $Res Function(_$TrendingNewsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_$TrendingNewsModelImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrendingNewsModelImpl extends _TrendingNewsModel {
  const _$TrendingNewsModelImpl(
      {required final List<NewsModel> data, required this.meta})
      : _data = data,
        super._();

  factory _$TrendingNewsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendingNewsModelImplFromJson(json);

  final List<NewsModel> _data;
  @override
  List<NewsModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final MetaModel meta;

  @override
  String toString() {
    return 'TrendingNewsModel(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingNewsModelImpl &&
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
  _$$TrendingNewsModelImplCopyWith<_$TrendingNewsModelImpl> get copyWith =>
      __$$TrendingNewsModelImplCopyWithImpl<_$TrendingNewsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendingNewsModelImplToJson(
      this,
    );
  }
}

abstract class _TrendingNewsModel extends TrendingNewsModel {
  const factory _TrendingNewsModel(
      {required final List<NewsModel> data,
      required final MetaModel meta}) = _$TrendingNewsModelImpl;
  const _TrendingNewsModel._() : super._();

  factory _TrendingNewsModel.fromJson(Map<String, dynamic> json) =
      _$TrendingNewsModelImpl.fromJson;

  @override
  List<NewsModel> get data;
  @override
  MetaModel get meta;
  @override
  @JsonKey(ignore: true)
  _$$TrendingNewsModelImplCopyWith<_$TrendingNewsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
