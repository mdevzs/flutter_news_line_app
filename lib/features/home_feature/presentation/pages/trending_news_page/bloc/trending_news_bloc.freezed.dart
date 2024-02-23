// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrendingNewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTrendingNews,
    required TResult Function(bool loadingMoreTryAgain) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllTrendingNews,
    TResult? Function(bool loadingMoreTryAgain)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTrendingNews,
    TResult Function(bool loadingMoreTryAgain)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllTrendingNews value) getAllTrendingNews,
    required TResult Function(_LoadMoreTrendingNews value) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllTrendingNews value)? getAllTrendingNews,
    TResult? Function(_LoadMoreTrendingNews value)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllTrendingNews value)? getAllTrendingNews,
    TResult Function(_LoadMoreTrendingNews value)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingNewsEventCopyWith<$Res> {
  factory $TrendingNewsEventCopyWith(
          TrendingNewsEvent value, $Res Function(TrendingNewsEvent) then) =
      _$TrendingNewsEventCopyWithImpl<$Res, TrendingNewsEvent>;
}

/// @nodoc
class _$TrendingNewsEventCopyWithImpl<$Res, $Val extends TrendingNewsEvent>
    implements $TrendingNewsEventCopyWith<$Res> {
  _$TrendingNewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllTrendingNewsImplCopyWith<$Res> {
  factory _$$GetAllTrendingNewsImplCopyWith(_$GetAllTrendingNewsImpl value,
          $Res Function(_$GetAllTrendingNewsImpl) then) =
      __$$GetAllTrendingNewsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllTrendingNewsImplCopyWithImpl<$Res>
    extends _$TrendingNewsEventCopyWithImpl<$Res, _$GetAllTrendingNewsImpl>
    implements _$$GetAllTrendingNewsImplCopyWith<$Res> {
  __$$GetAllTrendingNewsImplCopyWithImpl(_$GetAllTrendingNewsImpl _value,
      $Res Function(_$GetAllTrendingNewsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllTrendingNewsImpl implements _GetAllTrendingNews {
  const _$GetAllTrendingNewsImpl();

  @override
  String toString() {
    return 'TrendingNewsEvent.getAllTrendingNews()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllTrendingNewsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTrendingNews,
    required TResult Function(bool loadingMoreTryAgain) loadMore,
  }) {
    return getAllTrendingNews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllTrendingNews,
    TResult? Function(bool loadingMoreTryAgain)? loadMore,
  }) {
    return getAllTrendingNews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTrendingNews,
    TResult Function(bool loadingMoreTryAgain)? loadMore,
    required TResult orElse(),
  }) {
    if (getAllTrendingNews != null) {
      return getAllTrendingNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllTrendingNews value) getAllTrendingNews,
    required TResult Function(_LoadMoreTrendingNews value) loadMore,
  }) {
    return getAllTrendingNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllTrendingNews value)? getAllTrendingNews,
    TResult? Function(_LoadMoreTrendingNews value)? loadMore,
  }) {
    return getAllTrendingNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllTrendingNews value)? getAllTrendingNews,
    TResult Function(_LoadMoreTrendingNews value)? loadMore,
    required TResult orElse(),
  }) {
    if (getAllTrendingNews != null) {
      return getAllTrendingNews(this);
    }
    return orElse();
  }
}

abstract class _GetAllTrendingNews implements TrendingNewsEvent {
  const factory _GetAllTrendingNews() = _$GetAllTrendingNewsImpl;
}

/// @nodoc
abstract class _$$LoadMoreTrendingNewsImplCopyWith<$Res> {
  factory _$$LoadMoreTrendingNewsImplCopyWith(_$LoadMoreTrendingNewsImpl value,
          $Res Function(_$LoadMoreTrendingNewsImpl) then) =
      __$$LoadMoreTrendingNewsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool loadingMoreTryAgain});
}

/// @nodoc
class __$$LoadMoreTrendingNewsImplCopyWithImpl<$Res>
    extends _$TrendingNewsEventCopyWithImpl<$Res, _$LoadMoreTrendingNewsImpl>
    implements _$$LoadMoreTrendingNewsImplCopyWith<$Res> {
  __$$LoadMoreTrendingNewsImplCopyWithImpl(_$LoadMoreTrendingNewsImpl _value,
      $Res Function(_$LoadMoreTrendingNewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingMoreTryAgain = null,
  }) {
    return _then(_$LoadMoreTrendingNewsImpl(
      loadingMoreTryAgain: null == loadingMoreTryAgain
          ? _value.loadingMoreTryAgain
          : loadingMoreTryAgain // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadMoreTrendingNewsImpl implements _LoadMoreTrendingNews {
  const _$LoadMoreTrendingNewsImpl({this.loadingMoreTryAgain = false});

  @override
  @JsonKey()
  final bool loadingMoreTryAgain;

  @override
  String toString() {
    return 'TrendingNewsEvent.loadMore(loadingMoreTryAgain: $loadingMoreTryAgain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreTrendingNewsImpl &&
            (identical(other.loadingMoreTryAgain, loadingMoreTryAgain) ||
                other.loadingMoreTryAgain == loadingMoreTryAgain));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadingMoreTryAgain);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMoreTrendingNewsImplCopyWith<_$LoadMoreTrendingNewsImpl>
      get copyWith =>
          __$$LoadMoreTrendingNewsImplCopyWithImpl<_$LoadMoreTrendingNewsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTrendingNews,
    required TResult Function(bool loadingMoreTryAgain) loadMore,
  }) {
    return loadMore(loadingMoreTryAgain);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllTrendingNews,
    TResult? Function(bool loadingMoreTryAgain)? loadMore,
  }) {
    return loadMore?.call(loadingMoreTryAgain);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTrendingNews,
    TResult Function(bool loadingMoreTryAgain)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(loadingMoreTryAgain);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllTrendingNews value) getAllTrendingNews,
    required TResult Function(_LoadMoreTrendingNews value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllTrendingNews value)? getAllTrendingNews,
    TResult? Function(_LoadMoreTrendingNews value)? loadMore,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllTrendingNews value)? getAllTrendingNews,
    TResult Function(_LoadMoreTrendingNews value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreTrendingNews implements TrendingNewsEvent {
  const factory _LoadMoreTrendingNews({final bool loadingMoreTryAgain}) =
      _$LoadMoreTrendingNewsImpl;

  bool get loadingMoreTryAgain;
  @JsonKey(ignore: true)
  _$$LoadMoreTrendingNewsImplCopyWith<_$LoadMoreTrendingNewsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrendingNewsState {
  List<NewsEntity> get trendingNews => throw _privateConstructorUsedError;
  TrendingNewsStatus get trendingNewsStatus =>
      throw _privateConstructorUsedError;
  bool get hasReachedEnd => throw _privateConstructorUsedError;
  TrendingNewsLoadMoreStatus get loadMoreStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrendingNewsStateCopyWith<TrendingNewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingNewsStateCopyWith<$Res> {
  factory $TrendingNewsStateCopyWith(
          TrendingNewsState value, $Res Function(TrendingNewsState) then) =
      _$TrendingNewsStateCopyWithImpl<$Res, TrendingNewsState>;
  @useResult
  $Res call(
      {List<NewsEntity> trendingNews,
      TrendingNewsStatus trendingNewsStatus,
      bool hasReachedEnd,
      TrendingNewsLoadMoreStatus loadMoreStatus});

  $TrendingNewsStatusCopyWith<$Res> get trendingNewsStatus;
  $TrendingNewsLoadMoreStatusCopyWith<$Res> get loadMoreStatus;
}

/// @nodoc
class _$TrendingNewsStateCopyWithImpl<$Res, $Val extends TrendingNewsState>
    implements $TrendingNewsStateCopyWith<$Res> {
  _$TrendingNewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trendingNews = null,
    Object? trendingNewsStatus = null,
    Object? hasReachedEnd = null,
    Object? loadMoreStatus = null,
  }) {
    return _then(_value.copyWith(
      trendingNews: null == trendingNews
          ? _value.trendingNews
          : trendingNews // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>,
      trendingNewsStatus: null == trendingNewsStatus
          ? _value.trendingNewsStatus
          : trendingNewsStatus // ignore: cast_nullable_to_non_nullable
              as TrendingNewsStatus,
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      loadMoreStatus: null == loadMoreStatus
          ? _value.loadMoreStatus
          : loadMoreStatus // ignore: cast_nullable_to_non_nullable
              as TrendingNewsLoadMoreStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrendingNewsStatusCopyWith<$Res> get trendingNewsStatus {
    return $TrendingNewsStatusCopyWith<$Res>(_value.trendingNewsStatus,
        (value) {
      return _then(_value.copyWith(trendingNewsStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TrendingNewsLoadMoreStatusCopyWith<$Res> get loadMoreStatus {
    return $TrendingNewsLoadMoreStatusCopyWith<$Res>(_value.loadMoreStatus,
        (value) {
      return _then(_value.copyWith(loadMoreStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrendingNewsStateImplCopyWith<$Res>
    implements $TrendingNewsStateCopyWith<$Res> {
  factory _$$TrendingNewsStateImplCopyWith(_$TrendingNewsStateImpl value,
          $Res Function(_$TrendingNewsStateImpl) then) =
      __$$TrendingNewsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NewsEntity> trendingNews,
      TrendingNewsStatus trendingNewsStatus,
      bool hasReachedEnd,
      TrendingNewsLoadMoreStatus loadMoreStatus});

  @override
  $TrendingNewsStatusCopyWith<$Res> get trendingNewsStatus;
  @override
  $TrendingNewsLoadMoreStatusCopyWith<$Res> get loadMoreStatus;
}

/// @nodoc
class __$$TrendingNewsStateImplCopyWithImpl<$Res>
    extends _$TrendingNewsStateCopyWithImpl<$Res, _$TrendingNewsStateImpl>
    implements _$$TrendingNewsStateImplCopyWith<$Res> {
  __$$TrendingNewsStateImplCopyWithImpl(_$TrendingNewsStateImpl _value,
      $Res Function(_$TrendingNewsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trendingNews = null,
    Object? trendingNewsStatus = null,
    Object? hasReachedEnd = null,
    Object? loadMoreStatus = null,
  }) {
    return _then(_$TrendingNewsStateImpl(
      trendingNews: null == trendingNews
          ? _value._trendingNews
          : trendingNews // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>,
      trendingNewsStatus: null == trendingNewsStatus
          ? _value.trendingNewsStatus
          : trendingNewsStatus // ignore: cast_nullable_to_non_nullable
              as TrendingNewsStatus,
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      loadMoreStatus: null == loadMoreStatus
          ? _value.loadMoreStatus
          : loadMoreStatus // ignore: cast_nullable_to_non_nullable
              as TrendingNewsLoadMoreStatus,
    ));
  }
}

/// @nodoc

class _$TrendingNewsStateImpl implements _TrendingNewsState {
  const _$TrendingNewsStateImpl(
      {final List<NewsEntity> trendingNews = const [],
      this.trendingNewsStatus = const TrendingNewsStatus.loading(),
      this.hasReachedEnd = false,
      this.loadMoreStatus = const TrendingNewsLoadMoreStatus.loading()})
      : _trendingNews = trendingNews;

  final List<NewsEntity> _trendingNews;
  @override
  @JsonKey()
  List<NewsEntity> get trendingNews {
    if (_trendingNews is EqualUnmodifiableListView) return _trendingNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingNews);
  }

  @override
  @JsonKey()
  final TrendingNewsStatus trendingNewsStatus;
  @override
  @JsonKey()
  final bool hasReachedEnd;
  @override
  @JsonKey()
  final TrendingNewsLoadMoreStatus loadMoreStatus;

  @override
  String toString() {
    return 'TrendingNewsState(trendingNews: $trendingNews, trendingNewsStatus: $trendingNewsStatus, hasReachedEnd: $hasReachedEnd, loadMoreStatus: $loadMoreStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingNewsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._trendingNews, _trendingNews) &&
            (identical(other.trendingNewsStatus, trendingNewsStatus) ||
                other.trendingNewsStatus == trendingNewsStatus) &&
            (identical(other.hasReachedEnd, hasReachedEnd) ||
                other.hasReachedEnd == hasReachedEnd) &&
            (identical(other.loadMoreStatus, loadMoreStatus) ||
                other.loadMoreStatus == loadMoreStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_trendingNews),
      trendingNewsStatus,
      hasReachedEnd,
      loadMoreStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingNewsStateImplCopyWith<_$TrendingNewsStateImpl> get copyWith =>
      __$$TrendingNewsStateImplCopyWithImpl<_$TrendingNewsStateImpl>(
          this, _$identity);
}

abstract class _TrendingNewsState implements TrendingNewsState {
  const factory _TrendingNewsState(
          {final List<NewsEntity> trendingNews,
          final TrendingNewsStatus trendingNewsStatus,
          final bool hasReachedEnd,
          final TrendingNewsLoadMoreStatus loadMoreStatus}) =
      _$TrendingNewsStateImpl;

  @override
  List<NewsEntity> get trendingNews;
  @override
  TrendingNewsStatus get trendingNewsStatus;
  @override
  bool get hasReachedEnd;
  @override
  TrendingNewsLoadMoreStatus get loadMoreStatus;
  @override
  @JsonKey(ignore: true)
  _$$TrendingNewsStateImplCopyWith<_$TrendingNewsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
