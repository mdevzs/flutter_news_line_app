// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEntity {
  UserEntity get user => throw _privateConstructorUsedError;
  List<NewsEntity>? get trendingNews => throw _privateConstructorUsedError;
  List<TagEntity>? get tags => throw _privateConstructorUsedError;
  List<NewsEntity>? get recentNews => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeEntityCopyWith<HomeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEntityCopyWith<$Res> {
  factory $HomeEntityCopyWith(
          HomeEntity value, $Res Function(HomeEntity) then) =
      _$HomeEntityCopyWithImpl<$Res, HomeEntity>;
  @useResult
  $Res call(
      {UserEntity user,
      List<NewsEntity>? trendingNews,
      List<TagEntity>? tags,
      List<NewsEntity>? recentNews});

  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class _$HomeEntityCopyWithImpl<$Res, $Val extends HomeEntity>
    implements $HomeEntityCopyWith<$Res> {
  _$HomeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? trendingNews = freezed,
    Object? tags = freezed,
    Object? recentNews = freezed,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      trendingNews: freezed == trendingNews
          ? _value.trendingNews
          : trendingNews // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagEntity>?,
      recentNews: freezed == recentNews
          ? _value.recentNews
          : recentNews // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeEntityImplCopyWith<$Res>
    implements $HomeEntityCopyWith<$Res> {
  factory _$$HomeEntityImplCopyWith(
          _$HomeEntityImpl value, $Res Function(_$HomeEntityImpl) then) =
      __$$HomeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserEntity user,
      List<NewsEntity>? trendingNews,
      List<TagEntity>? tags,
      List<NewsEntity>? recentNews});

  @override
  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$HomeEntityImplCopyWithImpl<$Res>
    extends _$HomeEntityCopyWithImpl<$Res, _$HomeEntityImpl>
    implements _$$HomeEntityImplCopyWith<$Res> {
  __$$HomeEntityImplCopyWithImpl(
      _$HomeEntityImpl _value, $Res Function(_$HomeEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? trendingNews = freezed,
    Object? tags = freezed,
    Object? recentNews = freezed,
  }) {
    return _then(_$HomeEntityImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      trendingNews: freezed == trendingNews
          ? _value.trendingNews
          : trendingNews // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagEntity>?,
      recentNews: freezed == recentNews
          ? _value.recentNews
          : recentNews // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>?,
    ));
  }
}

/// @nodoc

class _$HomeEntityImpl implements _HomeEntity {
  _$HomeEntityImpl(
      {required this.user, this.trendingNews, this.tags, this.recentNews});

  @override
  final UserEntity user;
  @override
  final List<NewsEntity>? trendingNews;
  @override
  final List<TagEntity>? tags;
  @override
  final List<NewsEntity>? recentNews;

  @override
  String toString() {
    return 'HomeEntity(user: $user, trendingNews: $trendingNews, tags: $tags, recentNews: $recentNews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEntityImpl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other.trendingNews, trendingNews) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality()
                .equals(other.recentNews, recentNews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      const DeepCollectionEquality().hash(trendingNews),
      const DeepCollectionEquality().hash(tags),
      const DeepCollectionEquality().hash(recentNews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeEntityImplCopyWith<_$HomeEntityImpl> get copyWith =>
      __$$HomeEntityImplCopyWithImpl<_$HomeEntityImpl>(this, _$identity);
}

abstract class _HomeEntity implements HomeEntity {
  factory _HomeEntity(
      {required final UserEntity user,
      final List<NewsEntity>? trendingNews,
      final List<TagEntity>? tags,
      final List<NewsEntity>? recentNews}) = _$HomeEntityImpl;

  @override
  UserEntity get user;
  @override
  List<NewsEntity>? get trendingNews;
  @override
  List<TagEntity>? get tags;
  @override
  List<NewsEntity>? get recentNews;
  @override
  @JsonKey(ignore: true)
  _$$HomeEntityImplCopyWith<_$HomeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
