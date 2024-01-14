// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discover_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DiscoverEntity {
  List<NewsEntity> get topNews => throw _privateConstructorUsedError;
  List<UserEntity> get popularPublishers => throw _privateConstructorUsedError;
  List<UserEntity> get popularAuthors => throw _privateConstructorUsedError;
  List<NewsEntity> get recommandedNews => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiscoverEntityCopyWith<DiscoverEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverEntityCopyWith<$Res> {
  factory $DiscoverEntityCopyWith(
          DiscoverEntity value, $Res Function(DiscoverEntity) then) =
      _$DiscoverEntityCopyWithImpl<$Res, DiscoverEntity>;
  @useResult
  $Res call(
      {List<NewsEntity> topNews,
      List<UserEntity> popularPublishers,
      List<UserEntity> popularAuthors,
      List<NewsEntity> recommandedNews});
}

/// @nodoc
class _$DiscoverEntityCopyWithImpl<$Res, $Val extends DiscoverEntity>
    implements $DiscoverEntityCopyWith<$Res> {
  _$DiscoverEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topNews = null,
    Object? popularPublishers = null,
    Object? popularAuthors = null,
    Object? recommandedNews = null,
  }) {
    return _then(_value.copyWith(
      topNews: null == topNews
          ? _value.topNews
          : topNews // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>,
      popularPublishers: null == popularPublishers
          ? _value.popularPublishers
          : popularPublishers // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      popularAuthors: null == popularAuthors
          ? _value.popularAuthors
          : popularAuthors // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      recommandedNews: null == recommandedNews
          ? _value.recommandedNews
          : recommandedNews // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscoverEntityImplCopyWith<$Res>
    implements $DiscoverEntityCopyWith<$Res> {
  factory _$$DiscoverEntityImplCopyWith(_$DiscoverEntityImpl value,
          $Res Function(_$DiscoverEntityImpl) then) =
      __$$DiscoverEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NewsEntity> topNews,
      List<UserEntity> popularPublishers,
      List<UserEntity> popularAuthors,
      List<NewsEntity> recommandedNews});
}

/// @nodoc
class __$$DiscoverEntityImplCopyWithImpl<$Res>
    extends _$DiscoverEntityCopyWithImpl<$Res, _$DiscoverEntityImpl>
    implements _$$DiscoverEntityImplCopyWith<$Res> {
  __$$DiscoverEntityImplCopyWithImpl(
      _$DiscoverEntityImpl _value, $Res Function(_$DiscoverEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topNews = null,
    Object? popularPublishers = null,
    Object? popularAuthors = null,
    Object? recommandedNews = null,
  }) {
    return _then(_$DiscoverEntityImpl(
      topNews: null == topNews
          ? _value._topNews
          : topNews // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>,
      popularPublishers: null == popularPublishers
          ? _value._popularPublishers
          : popularPublishers // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      popularAuthors: null == popularAuthors
          ? _value._popularAuthors
          : popularAuthors // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      recommandedNews: null == recommandedNews
          ? _value._recommandedNews
          : recommandedNews // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>,
    ));
  }
}

/// @nodoc

class _$DiscoverEntityImpl implements _DiscoverEntity {
  const _$DiscoverEntityImpl(
      {required final List<NewsEntity> topNews,
      required final List<UserEntity> popularPublishers,
      required final List<UserEntity> popularAuthors,
      required final List<NewsEntity> recommandedNews})
      : _topNews = topNews,
        _popularPublishers = popularPublishers,
        _popularAuthors = popularAuthors,
        _recommandedNews = recommandedNews;

  final List<NewsEntity> _topNews;
  @override
  List<NewsEntity> get topNews {
    if (_topNews is EqualUnmodifiableListView) return _topNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topNews);
  }

  final List<UserEntity> _popularPublishers;
  @override
  List<UserEntity> get popularPublishers {
    if (_popularPublishers is EqualUnmodifiableListView)
      return _popularPublishers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularPublishers);
  }

  final List<UserEntity> _popularAuthors;
  @override
  List<UserEntity> get popularAuthors {
    if (_popularAuthors is EqualUnmodifiableListView) return _popularAuthors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularAuthors);
  }

  final List<NewsEntity> _recommandedNews;
  @override
  List<NewsEntity> get recommandedNews {
    if (_recommandedNews is EqualUnmodifiableListView) return _recommandedNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommandedNews);
  }

  @override
  String toString() {
    return 'DiscoverEntity(topNews: $topNews, popularPublishers: $popularPublishers, popularAuthors: $popularAuthors, recommandedNews: $recommandedNews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverEntityImpl &&
            const DeepCollectionEquality().equals(other._topNews, _topNews) &&
            const DeepCollectionEquality()
                .equals(other._popularPublishers, _popularPublishers) &&
            const DeepCollectionEquality()
                .equals(other._popularAuthors, _popularAuthors) &&
            const DeepCollectionEquality()
                .equals(other._recommandedNews, _recommandedNews));
  }

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
  _$$DiscoverEntityImplCopyWith<_$DiscoverEntityImpl> get copyWith =>
      __$$DiscoverEntityImplCopyWithImpl<_$DiscoverEntityImpl>(
          this, _$identity);
}

abstract class _DiscoverEntity implements DiscoverEntity {
  const factory _DiscoverEntity(
      {required final List<NewsEntity> topNews,
      required final List<UserEntity> popularPublishers,
      required final List<UserEntity> popularAuthors,
      required final List<NewsEntity> recommandedNews}) = _$DiscoverEntityImpl;

  @override
  List<NewsEntity> get topNews;
  @override
  List<UserEntity> get popularPublishers;
  @override
  List<UserEntity> get popularAuthors;
  @override
  List<NewsEntity> get recommandedNews;
  @override
  @JsonKey(ignore: true)
  _$$DiscoverEntityImplCopyWith<_$DiscoverEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
