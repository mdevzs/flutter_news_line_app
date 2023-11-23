// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tag_news_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TagNewsEntity {
  List<TagEntity>? get tagNews => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TagNewsEntityCopyWith<TagNewsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagNewsEntityCopyWith<$Res> {
  factory $TagNewsEntityCopyWith(
          TagNewsEntity value, $Res Function(TagNewsEntity) then) =
      _$TagNewsEntityCopyWithImpl<$Res, TagNewsEntity>;
  @useResult
  $Res call({List<TagEntity>? tagNews});
}

/// @nodoc
class _$TagNewsEntityCopyWithImpl<$Res, $Val extends TagNewsEntity>
    implements $TagNewsEntityCopyWith<$Res> {
  _$TagNewsEntityCopyWithImpl(this._value, this._then);

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
              as List<TagEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagNewsEntityImplCopyWith<$Res>
    implements $TagNewsEntityCopyWith<$Res> {
  factory _$$TagNewsEntityImplCopyWith(
          _$TagNewsEntityImpl value, $Res Function(_$TagNewsEntityImpl) then) =
      __$$TagNewsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TagEntity>? tagNews});
}

/// @nodoc
class __$$TagNewsEntityImplCopyWithImpl<$Res>
    extends _$TagNewsEntityCopyWithImpl<$Res, _$TagNewsEntityImpl>
    implements _$$TagNewsEntityImplCopyWith<$Res> {
  __$$TagNewsEntityImplCopyWithImpl(
      _$TagNewsEntityImpl _value, $Res Function(_$TagNewsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagNews = freezed,
  }) {
    return _then(_$TagNewsEntityImpl(
      tagNews: freezed == tagNews
          ? _value._tagNews
          : tagNews // ignore: cast_nullable_to_non_nullable
              as List<TagEntity>?,
    ));
  }
}

/// @nodoc

class _$TagNewsEntityImpl implements _TagNewsEntity {
  _$TagNewsEntityImpl({final List<TagEntity>? tagNews}) : _tagNews = tagNews;

  final List<TagEntity>? _tagNews;
  @override
  List<TagEntity>? get tagNews {
    final value = _tagNews;
    if (value == null) return null;
    if (_tagNews is EqualUnmodifiableListView) return _tagNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TagNewsEntity(tagNews: $tagNews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagNewsEntityImpl &&
            const DeepCollectionEquality().equals(other._tagNews, _tagNews));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tagNews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagNewsEntityImplCopyWith<_$TagNewsEntityImpl> get copyWith =>
      __$$TagNewsEntityImplCopyWithImpl<_$TagNewsEntityImpl>(this, _$identity);
}

abstract class _TagNewsEntity implements TagNewsEntity {
  factory _TagNewsEntity({final List<TagEntity>? tagNews}) =
      _$TagNewsEntityImpl;

  @override
  List<TagEntity>? get tagNews;
  @override
  @JsonKey(ignore: true)
  _$$TagNewsEntityImplCopyWith<_$TagNewsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
