// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tags_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TagsEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TagsEntityCopyWith<TagsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagsEntityCopyWith<$Res> {
  factory $TagsEntityCopyWith(
          TagsEntity value, $Res Function(TagsEntity) then) =
      _$TagsEntityCopyWithImpl<$Res, TagsEntity>;
  @useResult
  $Res call({int id, String name, String image});
}

/// @nodoc
class _$TagsEntityCopyWithImpl<$Res, $Val extends TagsEntity>
    implements $TagsEntityCopyWith<$Res> {
  _$TagsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagsEntityImplCopyWith<$Res>
    implements $TagsEntityCopyWith<$Res> {
  factory _$$TagsEntityImplCopyWith(
          _$TagsEntityImpl value, $Res Function(_$TagsEntityImpl) then) =
      __$$TagsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String image});
}

/// @nodoc
class __$$TagsEntityImplCopyWithImpl<$Res>
    extends _$TagsEntityCopyWithImpl<$Res, _$TagsEntityImpl>
    implements _$$TagsEntityImplCopyWith<$Res> {
  __$$TagsEntityImplCopyWithImpl(
      _$TagsEntityImpl _value, $Res Function(_$TagsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_$TagsEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TagsEntityImpl implements _TagsEntity {
  const _$TagsEntityImpl(
      {required this.id, required this.name, required this.image});

  @override
  final int id;
  @override
  final String name;
  @override
  final String image;

  @override
  String toString() {
    return 'TagsEntity(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagsEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagsEntityImplCopyWith<_$TagsEntityImpl> get copyWith =>
      __$$TagsEntityImplCopyWithImpl<_$TagsEntityImpl>(this, _$identity);
}

abstract class _TagsEntity implements TagsEntity {
  const factory _TagsEntity(
      {required final int id,
      required final String name,
      required final String image}) = _$TagsEntityImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$TagsEntityImplCopyWith<_$TagsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
