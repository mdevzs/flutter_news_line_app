// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_news_tag_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailNewsTagEntity {
  TagModel get tag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailNewsTagEntityCopyWith<DetailNewsTagEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailNewsTagEntityCopyWith<$Res> {
  factory $DetailNewsTagEntityCopyWith(
          DetailNewsTagEntity value, $Res Function(DetailNewsTagEntity) then) =
      _$DetailNewsTagEntityCopyWithImpl<$Res, DetailNewsTagEntity>;
  @useResult
  $Res call({TagModel tag});

  $TagModelCopyWith<$Res> get tag;
}

/// @nodoc
class _$DetailNewsTagEntityCopyWithImpl<$Res, $Val extends DetailNewsTagEntity>
    implements $DetailNewsTagEntityCopyWith<$Res> {
  _$DetailNewsTagEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$DetailNewsTagEntityImplCopyWith<$Res>
    implements $DetailNewsTagEntityCopyWith<$Res> {
  factory _$$DetailNewsTagEntityImplCopyWith(_$DetailNewsTagEntityImpl value,
          $Res Function(_$DetailNewsTagEntityImpl) then) =
      __$$DetailNewsTagEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TagModel tag});

  @override
  $TagModelCopyWith<$Res> get tag;
}

/// @nodoc
class __$$DetailNewsTagEntityImplCopyWithImpl<$Res>
    extends _$DetailNewsTagEntityCopyWithImpl<$Res, _$DetailNewsTagEntityImpl>
    implements _$$DetailNewsTagEntityImplCopyWith<$Res> {
  __$$DetailNewsTagEntityImplCopyWithImpl(_$DetailNewsTagEntityImpl _value,
      $Res Function(_$DetailNewsTagEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
  }) {
    return _then(_$DetailNewsTagEntityImpl(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as TagModel,
    ));
  }
}

/// @nodoc

class _$DetailNewsTagEntityImpl implements _DetailNewsTagEntity {
  const _$DetailNewsTagEntityImpl({required this.tag});

  @override
  final TagModel tag;

  @override
  String toString() {
    return 'DetailNewsTagEntity(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailNewsTagEntityImpl &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailNewsTagEntityImplCopyWith<_$DetailNewsTagEntityImpl> get copyWith =>
      __$$DetailNewsTagEntityImplCopyWithImpl<_$DetailNewsTagEntityImpl>(
          this, _$identity);
}

abstract class _DetailNewsTagEntity implements DetailNewsTagEntity {
  const factory _DetailNewsTagEntity({required final TagModel tag}) =
      _$DetailNewsTagEntityImpl;

  @override
  TagModel get tag;
  @override
  @JsonKey(ignore: true)
  _$$DetailNewsTagEntityImplCopyWith<_$DetailNewsTagEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
