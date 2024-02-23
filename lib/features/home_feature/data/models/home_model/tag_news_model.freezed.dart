// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tag_news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TagNewsModel _$TagNewsModelFromJson(Map<String, dynamic> json) {
  return _TagNewsModel.fromJson(json);
}

/// @nodoc
mixin _$TagNewsModel {
  List<TagModel>? get tagNews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagNewsModelCopyWith<TagNewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagNewsModelCopyWith<$Res> {
  factory $TagNewsModelCopyWith(
          TagNewsModel value, $Res Function(TagNewsModel) then) =
      _$TagNewsModelCopyWithImpl<$Res, TagNewsModel>;
  @useResult
  $Res call({List<TagModel>? tagNews});
}

/// @nodoc
class _$TagNewsModelCopyWithImpl<$Res, $Val extends TagNewsModel>
    implements $TagNewsModelCopyWith<$Res> {
  _$TagNewsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagNews = freezed,
  }) {
    return _then(_value.copyWith(
      tagNews: freezed == tagNews
          ? _value.tagNews
          : tagNews // ignore: cast_nullable_to_non_nullable
              as List<TagModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagNewsModelImplCopyWith<$Res>
    implements $TagNewsModelCopyWith<$Res> {
  factory _$$TagNewsModelImplCopyWith(
          _$TagNewsModelImpl value, $Res Function(_$TagNewsModelImpl) then) =
      __$$TagNewsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TagModel>? tagNews});
}

/// @nodoc
class __$$TagNewsModelImplCopyWithImpl<$Res>
    extends _$TagNewsModelCopyWithImpl<$Res, _$TagNewsModelImpl>
    implements _$$TagNewsModelImplCopyWith<$Res> {
  __$$TagNewsModelImplCopyWithImpl(
      _$TagNewsModelImpl _value, $Res Function(_$TagNewsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagNews = freezed,
  }) {
    return _then(_$TagNewsModelImpl(
      tagNews: freezed == tagNews
          ? _value._tagNews
          : tagNews // ignore: cast_nullable_to_non_nullable
              as List<TagModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TagNewsModelImpl extends _TagNewsModel {
  _$TagNewsModelImpl({final List<TagModel>? tagNews})
      : _tagNews = tagNews,
        super._();

  factory _$TagNewsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagNewsModelImplFromJson(json);

  final List<TagModel>? _tagNews;
  @override
  List<TagModel>? get tagNews {
    final value = _tagNews;
    if (value == null) return null;
    if (_tagNews is EqualUnmodifiableListView) return _tagNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TagNewsModel(tagNews: $tagNews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagNewsModelImpl &&
            const DeepCollectionEquality().equals(other._tagNews, _tagNews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tagNews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagNewsModelImplCopyWith<_$TagNewsModelImpl> get copyWith =>
      __$$TagNewsModelImplCopyWithImpl<_$TagNewsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagNewsModelImplToJson(
      this,
    );
  }
}

abstract class _TagNewsModel extends TagNewsModel {
  factory _TagNewsModel({final List<TagModel>? tagNews}) = _$TagNewsModelImpl;
  _TagNewsModel._() : super._();

  factory _TagNewsModel.fromJson(Map<String, dynamic> json) =
      _$TagNewsModelImpl.fromJson;

  @override
  List<TagModel>? get tagNews;
  @override
  @JsonKey(ignore: true)
  _$$TagNewsModelImplCopyWith<_$TagNewsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
