// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discover_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiscoverModel _$DiscoverModelFromJson(Map<String, dynamic> json) {
  return _DiscoverModel.fromJson(json);
}

/// @nodoc
mixin _$DiscoverModel {
  List<NewsModel>? get topNews => throw _privateConstructorUsedError;
  List<UserModel>? get popularPublishers => throw _privateConstructorUsedError;
  List<UserModel>? get popularAuthors => throw _privateConstructorUsedError;
  List<NewsModel>? get recommandedNews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscoverModelCopyWith<DiscoverModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverModelCopyWith<$Res> {
  factory $DiscoverModelCopyWith(
          DiscoverModel value, $Res Function(DiscoverModel) then) =
      _$DiscoverModelCopyWithImpl<$Res, DiscoverModel>;
  @useResult
  $Res call(
      {List<NewsModel>? topNews,
      List<UserModel>? popularPublishers,
      List<UserModel>? popularAuthors,
      List<NewsModel>? recommandedNews});
}

/// @nodoc
class _$DiscoverModelCopyWithImpl<$Res, $Val extends DiscoverModel>
    implements $DiscoverModelCopyWith<$Res> {
  _$DiscoverModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topNews = freezed,
    Object? popularPublishers = freezed,
    Object? popularAuthors = freezed,
    Object? recommandedNews = freezed,
  }) {
    return _then(_value.copyWith(
      topNews: freezed == topNews
          ? _value.topNews
          : topNews // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>?,
      popularPublishers: freezed == popularPublishers
          ? _value.popularPublishers
          : popularPublishers // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      popularAuthors: freezed == popularAuthors
          ? _value.popularAuthors
          : popularAuthors // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      recommandedNews: freezed == recommandedNews
          ? _value.recommandedNews
          : recommandedNews // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscoverModelImplCopyWith<$Res>
    implements $DiscoverModelCopyWith<$Res> {
  factory _$$DiscoverModelImplCopyWith(
          _$DiscoverModelImpl value, $Res Function(_$DiscoverModelImpl) then) =
      __$$DiscoverModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NewsModel>? topNews,
      List<UserModel>? popularPublishers,
      List<UserModel>? popularAuthors,
      List<NewsModel>? recommandedNews});
}

/// @nodoc
class __$$DiscoverModelImplCopyWithImpl<$Res>
    extends _$DiscoverModelCopyWithImpl<$Res, _$DiscoverModelImpl>
    implements _$$DiscoverModelImplCopyWith<$Res> {
  __$$DiscoverModelImplCopyWithImpl(
      _$DiscoverModelImpl _value, $Res Function(_$DiscoverModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topNews = freezed,
    Object? popularPublishers = freezed,
    Object? popularAuthors = freezed,
    Object? recommandedNews = freezed,
  }) {
    return _then(_$DiscoverModelImpl(
      topNews: freezed == topNews
          ? _value._topNews
          : topNews // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>?,
      popularPublishers: freezed == popularPublishers
          ? _value._popularPublishers
          : popularPublishers // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      popularAuthors: freezed == popularAuthors
          ? _value._popularAuthors
          : popularAuthors // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      recommandedNews: freezed == recommandedNews
          ? _value._recommandedNews
          : recommandedNews // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscoverModelImpl extends _DiscoverModel {
  const _$DiscoverModelImpl(
      {final List<NewsModel>? topNews,
      final List<UserModel>? popularPublishers,
      final List<UserModel>? popularAuthors,
      final List<NewsModel>? recommandedNews})
      : _topNews = topNews,
        _popularPublishers = popularPublishers,
        _popularAuthors = popularAuthors,
        _recommandedNews = recommandedNews,
        super._();

  factory _$DiscoverModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscoverModelImplFromJson(json);

  final List<NewsModel>? _topNews;
  @override
  List<NewsModel>? get topNews {
    final value = _topNews;
    if (value == null) return null;
    if (_topNews is EqualUnmodifiableListView) return _topNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<UserModel>? _popularPublishers;
  @override
  List<UserModel>? get popularPublishers {
    final value = _popularPublishers;
    if (value == null) return null;
    if (_popularPublishers is EqualUnmodifiableListView)
      return _popularPublishers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<UserModel>? _popularAuthors;
  @override
  List<UserModel>? get popularAuthors {
    final value = _popularAuthors;
    if (value == null) return null;
    if (_popularAuthors is EqualUnmodifiableListView) return _popularAuthors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<NewsModel>? _recommandedNews;
  @override
  List<NewsModel>? get recommandedNews {
    final value = _recommandedNews;
    if (value == null) return null;
    if (_recommandedNews is EqualUnmodifiableListView) return _recommandedNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DiscoverModel(topNews: $topNews, popularPublishers: $popularPublishers, popularAuthors: $popularAuthors, recommandedNews: $recommandedNews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverModelImpl &&
            const DeepCollectionEquality().equals(other._topNews, _topNews) &&
            const DeepCollectionEquality()
                .equals(other._popularPublishers, _popularPublishers) &&
            const DeepCollectionEquality()
                .equals(other._popularAuthors, _popularAuthors) &&
            const DeepCollectionEquality()
                .equals(other._recommandedNews, _recommandedNews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_topNews),
      const DeepCollectionEquality().hash(_popularPublishers),
      const DeepCollectionEquality().hash(_popularAuthors),
      const DeepCollectionEquality().hash(_recommandedNews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoverModelImplCopyWith<_$DiscoverModelImpl> get copyWith =>
      __$$DiscoverModelImplCopyWithImpl<_$DiscoverModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscoverModelImplToJson(
      this,
    );
  }
}

abstract class _DiscoverModel extends DiscoverModel {
  const factory _DiscoverModel(
      {final List<NewsModel>? topNews,
      final List<UserModel>? popularPublishers,
      final List<UserModel>? popularAuthors,
      final List<NewsModel>? recommandedNews}) = _$DiscoverModelImpl;
  const _DiscoverModel._() : super._();

  factory _DiscoverModel.fromJson(Map<String, dynamic> json) =
      _$DiscoverModelImpl.fromJson;

  @override
  List<NewsModel>? get topNews;
  @override
  List<UserModel>? get popularPublishers;
  @override
  List<UserModel>? get popularAuthors;
  @override
  List<NewsModel>? get recommandedNews;
  @override
  @JsonKey(ignore: true)
  _$$DiscoverModelImplCopyWith<_$DiscoverModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
