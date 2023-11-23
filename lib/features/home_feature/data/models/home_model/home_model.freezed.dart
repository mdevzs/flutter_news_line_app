// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return _HomeModel.fromJson(json);
}

/// @nodoc
mixin _$HomeModel {
  UserModel get user => throw _privateConstructorUsedError;
  List<NewsModel>? get trendingNews => throw _privateConstructorUsedError;
  List<TagModel>? get tags => throw _privateConstructorUsedError;
  List<NewsModel>? get recentNews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
  @useResult
  $Res call(
      {UserModel user,
      List<NewsModel>? trendingNews,
      List<TagModel>? tags,
      List<NewsModel>? recentNews});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

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
              as UserModel,
      trendingNews: freezed == trendingNews
          ? _value.trendingNews
          : trendingNews // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagModel>?,
      recentNews: freezed == recentNews
          ? _value.recentNews
          : recentNews // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeModelImplCopyWith<$Res>
    implements $HomeModelCopyWith<$Res> {
  factory _$$HomeModelImplCopyWith(
          _$HomeModelImpl value, $Res Function(_$HomeModelImpl) then) =
      __$$HomeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserModel user,
      List<NewsModel>? trendingNews,
      List<TagModel>? tags,
      List<NewsModel>? recentNews});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$HomeModelImplCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$HomeModelImpl>
    implements _$$HomeModelImplCopyWith<$Res> {
  __$$HomeModelImplCopyWithImpl(
      _$HomeModelImpl _value, $Res Function(_$HomeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? trendingNews = freezed,
    Object? tags = freezed,
    Object? recentNews = freezed,
  }) {
    return _then(_$HomeModelImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      trendingNews: freezed == trendingNews
          ? _value._trendingNews
          : trendingNews // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagModel>?,
      recentNews: freezed == recentNews
          ? _value._recentNews
          : recentNews // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeModelImpl extends _HomeModel {
  _$HomeModelImpl(
      {required this.user,
      final List<NewsModel>? trendingNews,
      final List<TagModel>? tags,
      final List<NewsModel>? recentNews})
      : _trendingNews = trendingNews,
        _tags = tags,
        _recentNews = recentNews,
        super._();

  factory _$HomeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeModelImplFromJson(json);

  @override
  final UserModel user;
  final List<NewsModel>? _trendingNews;
  @override
  List<NewsModel>? get trendingNews {
    final value = _trendingNews;
    if (value == null) return null;
    if (_trendingNews is EqualUnmodifiableListView) return _trendingNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TagModel>? _tags;
  @override
  List<TagModel>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<NewsModel>? _recentNews;
  @override
  List<NewsModel>? get recentNews {
    final value = _recentNews;
    if (value == null) return null;
    if (_recentNews is EqualUnmodifiableListView) return _recentNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeModel(user: $user, trendingNews: $trendingNews, tags: $tags, recentNews: $recentNews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelImpl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._trendingNews, _trendingNews) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._recentNews, _recentNews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      const DeepCollectionEquality().hash(_trendingNews),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_recentNews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      __$$HomeModelImplCopyWithImpl<_$HomeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeModelImplToJson(
      this,
    );
  }
}

abstract class _HomeModel extends HomeModel {
  factory _HomeModel(
      {required final UserModel user,
      final List<NewsModel>? trendingNews,
      final List<TagModel>? tags,
      final List<NewsModel>? recentNews}) = _$HomeModelImpl;
  _HomeModel._() : super._();

  factory _HomeModel.fromJson(Map<String, dynamic> json) =
      _$HomeModelImpl.fromJson;

  @override
  UserModel get user;
  @override
  List<NewsModel>? get trendingNews;
  @override
  List<TagModel>? get tags;
  @override
  List<NewsModel>? get recentNews;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
