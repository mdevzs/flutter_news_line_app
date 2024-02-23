// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newsId) getNewsById,
    required TResult Function() toggleShowReplies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newsId)? getNewsById,
    TResult? Function()? toggleShowReplies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newsId)? getNewsById,
    TResult Function()? toggleShowReplies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNewsById value) getNewsById,
    required TResult Function(_ToggleShowReplies value) toggleShowReplies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNewsById value)? getNewsById,
    TResult? Function(_ToggleShowReplies value)? toggleShowReplies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNewsById value)? getNewsById,
    TResult Function(_ToggleShowReplies value)? toggleShowReplies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDetailEventCopyWith<$Res> {
  factory $NewsDetailEventCopyWith(
          NewsDetailEvent value, $Res Function(NewsDetailEvent) then) =
      _$NewsDetailEventCopyWithImpl<$Res, NewsDetailEvent>;
}

/// @nodoc
class _$NewsDetailEventCopyWithImpl<$Res, $Val extends NewsDetailEvent>
    implements $NewsDetailEventCopyWith<$Res> {
  _$NewsDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetNewsByIdImplCopyWith<$Res> {
  factory _$$GetNewsByIdImplCopyWith(
          _$GetNewsByIdImpl value, $Res Function(_$GetNewsByIdImpl) then) =
      __$$GetNewsByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newsId});
}

/// @nodoc
class __$$GetNewsByIdImplCopyWithImpl<$Res>
    extends _$NewsDetailEventCopyWithImpl<$Res, _$GetNewsByIdImpl>
    implements _$$GetNewsByIdImplCopyWith<$Res> {
  __$$GetNewsByIdImplCopyWithImpl(
      _$GetNewsByIdImpl _value, $Res Function(_$GetNewsByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newsId = null,
  }) {
    return _then(_$GetNewsByIdImpl(
      null == newsId
          ? _value.newsId
          : newsId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetNewsByIdImpl implements _GetNewsById {
  const _$GetNewsByIdImpl(this.newsId);

  @override
  final String newsId;

  @override
  String toString() {
    return 'NewsDetailEvent.getNewsById(newsId: $newsId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNewsByIdImpl &&
            (identical(other.newsId, newsId) || other.newsId == newsId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newsId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNewsByIdImplCopyWith<_$GetNewsByIdImpl> get copyWith =>
      __$$GetNewsByIdImplCopyWithImpl<_$GetNewsByIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newsId) getNewsById,
    required TResult Function() toggleShowReplies,
  }) {
    return getNewsById(newsId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newsId)? getNewsById,
    TResult? Function()? toggleShowReplies,
  }) {
    return getNewsById?.call(newsId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newsId)? getNewsById,
    TResult Function()? toggleShowReplies,
    required TResult orElse(),
  }) {
    if (getNewsById != null) {
      return getNewsById(newsId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNewsById value) getNewsById,
    required TResult Function(_ToggleShowReplies value) toggleShowReplies,
  }) {
    return getNewsById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNewsById value)? getNewsById,
    TResult? Function(_ToggleShowReplies value)? toggleShowReplies,
  }) {
    return getNewsById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNewsById value)? getNewsById,
    TResult Function(_ToggleShowReplies value)? toggleShowReplies,
    required TResult orElse(),
  }) {
    if (getNewsById != null) {
      return getNewsById(this);
    }
    return orElse();
  }
}

abstract class _GetNewsById implements NewsDetailEvent {
  const factory _GetNewsById(final String newsId) = _$GetNewsByIdImpl;

  String get newsId;
  @JsonKey(ignore: true)
  _$$GetNewsByIdImplCopyWith<_$GetNewsByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleShowRepliesImplCopyWith<$Res> {
  factory _$$ToggleShowRepliesImplCopyWith(_$ToggleShowRepliesImpl value,
          $Res Function(_$ToggleShowRepliesImpl) then) =
      __$$ToggleShowRepliesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleShowRepliesImplCopyWithImpl<$Res>
    extends _$NewsDetailEventCopyWithImpl<$Res, _$ToggleShowRepliesImpl>
    implements _$$ToggleShowRepliesImplCopyWith<$Res> {
  __$$ToggleShowRepliesImplCopyWithImpl(_$ToggleShowRepliesImpl _value,
      $Res Function(_$ToggleShowRepliesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleShowRepliesImpl implements _ToggleShowReplies {
  const _$ToggleShowRepliesImpl();

  @override
  String toString() {
    return 'NewsDetailEvent.toggleShowReplies()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleShowRepliesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newsId) getNewsById,
    required TResult Function() toggleShowReplies,
  }) {
    return toggleShowReplies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newsId)? getNewsById,
    TResult? Function()? toggleShowReplies,
  }) {
    return toggleShowReplies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newsId)? getNewsById,
    TResult Function()? toggleShowReplies,
    required TResult orElse(),
  }) {
    if (toggleShowReplies != null) {
      return toggleShowReplies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNewsById value) getNewsById,
    required TResult Function(_ToggleShowReplies value) toggleShowReplies,
  }) {
    return toggleShowReplies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNewsById value)? getNewsById,
    TResult? Function(_ToggleShowReplies value)? toggleShowReplies,
  }) {
    return toggleShowReplies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNewsById value)? getNewsById,
    TResult Function(_ToggleShowReplies value)? toggleShowReplies,
    required TResult orElse(),
  }) {
    if (toggleShowReplies != null) {
      return toggleShowReplies(this);
    }
    return orElse();
  }
}

abstract class _ToggleShowReplies implements NewsDetailEvent {
  const factory _ToggleShowReplies() = _$ToggleShowRepliesImpl;
}

/// @nodoc
mixin _$NewsDetailState {
  bool get showReplies => throw _privateConstructorUsedError;
  NewsDetailsStatus get newsDetailsStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsDetailStateCopyWith<NewsDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDetailStateCopyWith<$Res> {
  factory $NewsDetailStateCopyWith(
          NewsDetailState value, $Res Function(NewsDetailState) then) =
      _$NewsDetailStateCopyWithImpl<$Res, NewsDetailState>;
  @useResult
  $Res call({bool showReplies, NewsDetailsStatus newsDetailsStatus});

  $NewsDetailsStatusCopyWith<$Res> get newsDetailsStatus;
}

/// @nodoc
class _$NewsDetailStateCopyWithImpl<$Res, $Val extends NewsDetailState>
    implements $NewsDetailStateCopyWith<$Res> {
  _$NewsDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showReplies = null,
    Object? newsDetailsStatus = null,
  }) {
    return _then(_value.copyWith(
      showReplies: null == showReplies
          ? _value.showReplies
          : showReplies // ignore: cast_nullable_to_non_nullable
              as bool,
      newsDetailsStatus: null == newsDetailsStatus
          ? _value.newsDetailsStatus
          : newsDetailsStatus // ignore: cast_nullable_to_non_nullable
              as NewsDetailsStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsDetailsStatusCopyWith<$Res> get newsDetailsStatus {
    return $NewsDetailsStatusCopyWith<$Res>(_value.newsDetailsStatus, (value) {
      return _then(_value.copyWith(newsDetailsStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewsDetailStateImplCopyWith<$Res>
    implements $NewsDetailStateCopyWith<$Res> {
  factory _$$NewsDetailStateImplCopyWith(_$NewsDetailStateImpl value,
          $Res Function(_$NewsDetailStateImpl) then) =
      __$$NewsDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showReplies, NewsDetailsStatus newsDetailsStatus});

  @override
  $NewsDetailsStatusCopyWith<$Res> get newsDetailsStatus;
}

/// @nodoc
class __$$NewsDetailStateImplCopyWithImpl<$Res>
    extends _$NewsDetailStateCopyWithImpl<$Res, _$NewsDetailStateImpl>
    implements _$$NewsDetailStateImplCopyWith<$Res> {
  __$$NewsDetailStateImplCopyWithImpl(
      _$NewsDetailStateImpl _value, $Res Function(_$NewsDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showReplies = null,
    Object? newsDetailsStatus = null,
  }) {
    return _then(_$NewsDetailStateImpl(
      showReplies: null == showReplies
          ? _value.showReplies
          : showReplies // ignore: cast_nullable_to_non_nullable
              as bool,
      newsDetailsStatus: null == newsDetailsStatus
          ? _value.newsDetailsStatus
          : newsDetailsStatus // ignore: cast_nullable_to_non_nullable
              as NewsDetailsStatus,
    ));
  }
}

/// @nodoc

class _$NewsDetailStateImpl implements _NewsDetailState {
  const _$NewsDetailStateImpl(
      {this.showReplies = false,
      this.newsDetailsStatus = const NewsDetailsStatus.loading()});

  @override
  @JsonKey()
  final bool showReplies;
  @override
  @JsonKey()
  final NewsDetailsStatus newsDetailsStatus;

  @override
  String toString() {
    return 'NewsDetailState(showReplies: $showReplies, newsDetailsStatus: $newsDetailsStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsDetailStateImpl &&
            (identical(other.showReplies, showReplies) ||
                other.showReplies == showReplies) &&
            (identical(other.newsDetailsStatus, newsDetailsStatus) ||
                other.newsDetailsStatus == newsDetailsStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showReplies, newsDetailsStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsDetailStateImplCopyWith<_$NewsDetailStateImpl> get copyWith =>
      __$$NewsDetailStateImplCopyWithImpl<_$NewsDetailStateImpl>(
          this, _$identity);
}

abstract class _NewsDetailState implements NewsDetailState {
  const factory _NewsDetailState(
      {final bool showReplies,
      final NewsDetailsStatus newsDetailsStatus}) = _$NewsDetailStateImpl;

  @override
  bool get showReplies;
  @override
  NewsDetailsStatus get newsDetailsStatus;
  @override
  @JsonKey(ignore: true)
  _$$NewsDetailStateImplCopyWith<_$NewsDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
