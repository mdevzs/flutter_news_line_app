// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecentNewsModel _$RecentNewsModelFromJson(Map<String, dynamic> json) {
  return _RecentNewsModel.fromJson(json);
}

/// @nodoc
mixin _$RecentNewsModel {
  List<NewsModel> get data => throw _privateConstructorUsedError;
  MetaModel get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecentNewsModelCopyWith<RecentNewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentNewsModelCopyWith<$Res> {
  factory $RecentNewsModelCopyWith(
          RecentNewsModel value, $Res Function(RecentNewsModel) then) =
      _$RecentNewsModelCopyWithImpl<$Res, RecentNewsModel>;
  @useResult
  $Res call({List<NewsModel> data, MetaModel meta});

  $MetaModelCopyWith<$Res> get meta;
}

/// @nodoc
class _$RecentNewsModelCopyWithImpl<$Res, $Val extends RecentNewsModel>
    implements $RecentNewsModelCopyWith<$Res> {
  _$RecentNewsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$RecentNewsModelImplCopyWith<$Res>
    implements $RecentNewsModelCopyWith<$Res> {
  factory _$$RecentNewsModelImplCopyWith(_$RecentNewsModelImpl value,
          $Res Function(_$RecentNewsModelImpl) then) =
      __$$RecentNewsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NewsModel> data, MetaModel meta});

  @override
  $MetaModelCopyWith<$Res> get meta;
}

/// @nodoc
class __$$RecentNewsModelImplCopyWithImpl<$Res>
    extends _$RecentNewsModelCopyWithImpl<$Res, _$RecentNewsModelImpl>
    implements _$$RecentNewsModelImplCopyWith<$Res> {
  __$$RecentNewsModelImplCopyWithImpl(
      _$RecentNewsModelImpl _value, $Res Function(_$RecentNewsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_$RecentNewsModelImpl(
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
class _$RecentNewsModelImpl extends _RecentNewsModel {
  const _$RecentNewsModelImpl(
      {required final List<NewsModel> data, required this.meta})
      : _data = data,
        super._();

  factory _$RecentNewsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecentNewsModelImplFromJson(json);

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
    return 'RecentNewsModel(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentNewsModelImpl &&
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
  _$$RecentNewsModelImplCopyWith<_$RecentNewsModelImpl> get copyWith =>
      __$$RecentNewsModelImplCopyWithImpl<_$RecentNewsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecentNewsModelImplToJson(
      this,
    );
  }
}

abstract class _RecentNewsModel extends RecentNewsModel {
  const factory _RecentNewsModel(
      {required final List<NewsModel> data,
      required final MetaModel meta}) = _$RecentNewsModelImpl;
  const _RecentNewsModel._() : super._();

  factory _RecentNewsModel.fromJson(Map<String, dynamic> json) =
      _$RecentNewsModelImpl.fromJson;

  @override
  List<NewsModel> get data;
  @override
  MetaModel get meta;
  @override
  @JsonKey(ignore: true)
  _$$RecentNewsModelImplCopyWith<_$RecentNewsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
