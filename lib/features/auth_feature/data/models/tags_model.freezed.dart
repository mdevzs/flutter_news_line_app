// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tags_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TagsModel _$TagsModelFromJson(Map<String, dynamic> json) {
  return _TagsModel.fromJson(json);
}

/// @nodoc
mixin _$TagsModel {
  int get id => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagsModelCopyWith<TagsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagsModelCopyWith<$Res> {
  factory $TagsModelCopyWith(TagsModel value, $Res Function(TagsModel) then) =
      _$TagsModelCopyWithImpl<$Res, TagsModel>;
  @useResult
  $Res call({int id, String tag, String imageUrl});
}

/// @nodoc
class _$TagsModelCopyWithImpl<$Res, $Val extends TagsModel>
    implements $TagsModelCopyWith<$Res> {
  _$TagsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tag = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagsModelImplCopyWith<$Res>
    implements $TagsModelCopyWith<$Res> {
  factory _$$TagsModelImplCopyWith(
          _$TagsModelImpl value, $Res Function(_$TagsModelImpl) then) =
      __$$TagsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String tag, String imageUrl});
}

/// @nodoc
class __$$TagsModelImplCopyWithImpl<$Res>
    extends _$TagsModelCopyWithImpl<$Res, _$TagsModelImpl>
    implements _$$TagsModelImplCopyWith<$Res> {
  __$$TagsModelImplCopyWithImpl(
      _$TagsModelImpl _value, $Res Function(_$TagsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tag = null,
    Object? imageUrl = null,
  }) {
    return _then(_$TagsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TagsModelImpl extends _TagsModel {
  const _$TagsModelImpl(
      {required this.id, required this.tag, required this.imageUrl})
      : super._();

  factory _$TagsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagsModelImplFromJson(json);

  @override
  final int id;
  @override
  final String tag;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'TagsModel(id: $id, tag: $tag, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, tag, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagsModelImplCopyWith<_$TagsModelImpl> get copyWith =>
      __$$TagsModelImplCopyWithImpl<_$TagsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagsModelImplToJson(
      this,
    );
  }
}

abstract class _TagsModel extends TagsModel {
  const factory _TagsModel(
      {required final int id,
      required final String tag,
      required final String imageUrl}) = _$TagsModelImpl;
  const _TagsModel._() : super._();

  factory _TagsModel.fromJson(Map<String, dynamic> json) =
      _$TagsModelImpl.fromJson;

  @override
  int get id;
  @override
  String get tag;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$TagsModelImplCopyWith<_$TagsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
