// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tag_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TagEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get tag => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get postsCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TagEntityCopyWith<TagEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagEntityCopyWith<$Res> {
  factory $TagEntityCopyWith(TagEntity value, $Res Function(TagEntity) then) =
      _$TagEntityCopyWithImpl<$Res, TagEntity>;
  @useResult
  $Res call({int? id, String? tag, String? image, int? postsCount});
}

/// @nodoc
class _$TagEntityCopyWithImpl<$Res, $Val extends TagEntity>
    implements $TagEntityCopyWith<$Res> {
  _$TagEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tag = freezed,
    Object? image = freezed,
    Object? postsCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      postsCount: freezed == postsCount
          ? _value.postsCount
          : postsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagEntityImplCopyWith<$Res>
    implements $TagEntityCopyWith<$Res> {
  factory _$$TagEntityImplCopyWith(
          _$TagEntityImpl value, $Res Function(_$TagEntityImpl) then) =
      __$$TagEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? tag, String? image, int? postsCount});
}

/// @nodoc
class __$$TagEntityImplCopyWithImpl<$Res>
    extends _$TagEntityCopyWithImpl<$Res, _$TagEntityImpl>
    implements _$$TagEntityImplCopyWith<$Res> {
  __$$TagEntityImplCopyWithImpl(
      _$TagEntityImpl _value, $Res Function(_$TagEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tag = freezed,
    Object? image = freezed,
    Object? postsCount = freezed,
  }) {
    return _then(_$TagEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      postsCount: freezed == postsCount
          ? _value.postsCount
          : postsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TagEntityImpl implements _TagEntity {
  _$TagEntityImpl({this.id, this.tag, this.image, this.postsCount});

  @override
  final int? id;
  @override
  final String? tag;
  @override
  final String? image;
  @override
  final int? postsCount;

  @override
  String toString() {
    return 'TagEntity(id: $id, tag: $tag, image: $image, postsCount: $postsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.postsCount, postsCount) ||
                other.postsCount == postsCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, tag, image, postsCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagEntityImplCopyWith<_$TagEntityImpl> get copyWith =>
      __$$TagEntityImplCopyWithImpl<_$TagEntityImpl>(this, _$identity);
}

abstract class _TagEntity implements TagEntity {
  factory _TagEntity(
      {final int? id,
      final String? tag,
      final String? image,
      final int? postsCount}) = _$TagEntityImpl;

  @override
  int? get id;
  @override
  String? get tag;
  @override
  String? get image;
  @override
  int? get postsCount;
  @override
  @JsonKey(ignore: true)
  _$$TagEntityImplCopyWith<_$TagEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
