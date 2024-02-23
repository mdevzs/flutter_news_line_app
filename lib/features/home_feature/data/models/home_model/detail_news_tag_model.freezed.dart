// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_news_tag_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailNewsTagModel _$DetailNewsTagModelFromJson(Map<String, dynamic> json) {
  return _DetailNewsTagModel.fromJson(json);
}

/// @nodoc
mixin _$DetailNewsTagModel {
  TagModel get tag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailNewsTagModelCopyWith<DetailNewsTagModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailNewsTagModelCopyWith<$Res> {
  factory $DetailNewsTagModelCopyWith(
          DetailNewsTagModel value, $Res Function(DetailNewsTagModel) then) =
      _$DetailNewsTagModelCopyWithImpl<$Res, DetailNewsTagModel>;
  @useResult
  $Res call({TagModel tag});

  $TagModelCopyWith<$Res> get tag;
}

/// @nodoc
class _$DetailNewsTagModelCopyWithImpl<$Res, $Val extends DetailNewsTagModel>
    implements $DetailNewsTagModelCopyWith<$Res> {
  _$DetailNewsTagModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
  }) {
    return _then(_value.copyWith(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as TagModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TagModelCopyWith<$Res> get tag {
    return $TagModelCopyWith<$Res>(_value.tag, (value) {
      return _then(_value.copyWith(tag: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailNewsTagModelImplCopyWith<$Res>
    implements $DetailNewsTagModelCopyWith<$Res> {
  factory _$$DetailNewsTagModelImplCopyWith(_$DetailNewsTagModelImpl value,
          $Res Function(_$DetailNewsTagModelImpl) then) =
      __$$DetailNewsTagModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TagModel tag});

  @override
  $TagModelCopyWith<$Res> get tag;
}

/// @nodoc
class __$$DetailNewsTagModelImplCopyWithImpl<$Res>
    extends _$DetailNewsTagModelCopyWithImpl<$Res, _$DetailNewsTagModelImpl>
    implements _$$DetailNewsTagModelImplCopyWith<$Res> {
  __$$DetailNewsTagModelImplCopyWithImpl(_$DetailNewsTagModelImpl _value,
      $Res Function(_$DetailNewsTagModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
  }) {
    return _then(_$DetailNewsTagModelImpl(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as TagModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailNewsTagModelImpl extends _DetailNewsTagModel {
  const _$DetailNewsTagModelImpl({required this.tag}) : super._();

  factory _$DetailNewsTagModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailNewsTagModelImplFromJson(json);

  @override
  final TagModel tag;

  @override
  String toString() {
    return 'DetailNewsTagModel(tag: $tag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailNewsTagModelImpl &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailNewsTagModelImplCopyWith<_$DetailNewsTagModelImpl> get copyWith =>
      __$$DetailNewsTagModelImplCopyWithImpl<_$DetailNewsTagModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailNewsTagModelImplToJson(
      this,
    );
  }
}

abstract class _DetailNewsTagModel extends DetailNewsTagModel {
  const factory _DetailNewsTagModel({required final TagModel tag}) =
      _$DetailNewsTagModelImpl;
  const _DetailNewsTagModel._() : super._();

  factory _DetailNewsTagModel.fromJson(Map<String, dynamic> json) =
      _$DetailNewsTagModelImpl.fromJson;

  @override
  TagModel get tag;
  @override
  @JsonKey(ignore: true)
  _$$DetailNewsTagModelImplCopyWith<_$DetailNewsTagModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
