// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_stories_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecentStoriesStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NewsEntity> recentStories) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<NewsEntity> recentStories)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NewsEntity> recentStories)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecentLoading value) loading,
    required TResult Function(_RecentSuccess value) success,
    required TResult Function(_RecentError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecentLoading value)? loading,
    TResult? Function(_RecentSuccess value)? success,
    TResult? Function(_RecentError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecentLoading value)? loading,
    TResult Function(_RecentSuccess value)? success,
    TResult Function(_RecentError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentStoriesStatusCopyWith<$Res> {
  factory $RecentStoriesStatusCopyWith(
          RecentStoriesStatus value, $Res Function(RecentStoriesStatus) then) =
      _$RecentStoriesStatusCopyWithImpl<$Res, RecentStoriesStatus>;
}

/// @nodoc
class _$RecentStoriesStatusCopyWithImpl<$Res, $Val extends RecentStoriesStatus>
    implements $RecentStoriesStatusCopyWith<$Res> {
  _$RecentStoriesStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RecentLoadingImplCopyWith<$Res> {
  factory _$$RecentLoadingImplCopyWith(
          _$RecentLoadingImpl value, $Res Function(_$RecentLoadingImpl) then) =
      __$$RecentLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecentLoadingImplCopyWithImpl<$Res>
    extends _$RecentStoriesStatusCopyWithImpl<$Res, _$RecentLoadingImpl>
    implements _$$RecentLoadingImplCopyWith<$Res> {
  __$$RecentLoadingImplCopyWithImpl(
      _$RecentLoadingImpl _value, $Res Function(_$RecentLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecentLoadingImpl implements _RecentLoading {
  const _$RecentLoadingImpl();

  @override
  String toString() {
    return 'RecentStoriesStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecentLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NewsEntity> recentStories) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<NewsEntity> recentStories)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NewsEntity> recentStories)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecentLoading value) loading,
    required TResult Function(_RecentSuccess value) success,
    required TResult Function(_RecentError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecentLoading value)? loading,
    TResult? Function(_RecentSuccess value)? success,
    TResult? Function(_RecentError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecentLoading value)? loading,
    TResult Function(_RecentSuccess value)? success,
    TResult Function(_RecentError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _RecentLoading implements RecentStoriesStatus {
  const factory _RecentLoading() = _$RecentLoadingImpl;
}

/// @nodoc
abstract class _$$RecentSuccessImplCopyWith<$Res> {
  factory _$$RecentSuccessImplCopyWith(
          _$RecentSuccessImpl value, $Res Function(_$RecentSuccessImpl) then) =
      __$$RecentSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NewsEntity> recentStories});
}

/// @nodoc
class __$$RecentSuccessImplCopyWithImpl<$Res>
    extends _$RecentStoriesStatusCopyWithImpl<$Res, _$RecentSuccessImpl>
    implements _$$RecentSuccessImplCopyWith<$Res> {
  __$$RecentSuccessImplCopyWithImpl(
      _$RecentSuccessImpl _value, $Res Function(_$RecentSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recentStories = null,
  }) {
    return _then(_$RecentSuccessImpl(
      null == recentStories
          ? _value._recentStories
          : recentStories // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>,
    ));
  }
}

/// @nodoc

class _$RecentSuccessImpl implements _RecentSuccess {
  const _$RecentSuccessImpl(final List<NewsEntity> recentStories)
      : _recentStories = recentStories;

  final List<NewsEntity> _recentStories;
  @override
  List<NewsEntity> get recentStories {
    if (_recentStories is EqualUnmodifiableListView) return _recentStories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentStories);
  }

  @override
  String toString() {
    return 'RecentStoriesStatus.success(recentStories: $recentStories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._recentStories, _recentStories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_recentStories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentSuccessImplCopyWith<_$RecentSuccessImpl> get copyWith =>
      __$$RecentSuccessImplCopyWithImpl<_$RecentSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NewsEntity> recentStories) success,
    required TResult Function(String message) error,
  }) {
    return success(recentStories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<NewsEntity> recentStories)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(recentStories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NewsEntity> recentStories)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(recentStories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecentLoading value) loading,
    required TResult Function(_RecentSuccess value) success,
    required TResult Function(_RecentError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecentLoading value)? loading,
    TResult? Function(_RecentSuccess value)? success,
    TResult? Function(_RecentError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecentLoading value)? loading,
    TResult Function(_RecentSuccess value)? success,
    TResult Function(_RecentError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _RecentSuccess implements RecentStoriesStatus {
  const factory _RecentSuccess(final List<NewsEntity> recentStories) =
      _$RecentSuccessImpl;

  List<NewsEntity> get recentStories;
  @JsonKey(ignore: true)
  _$$RecentSuccessImplCopyWith<_$RecentSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecentErrorImplCopyWith<$Res> {
  factory _$$RecentErrorImplCopyWith(
          _$RecentErrorImpl value, $Res Function(_$RecentErrorImpl) then) =
      __$$RecentErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RecentErrorImplCopyWithImpl<$Res>
    extends _$RecentStoriesStatusCopyWithImpl<$Res, _$RecentErrorImpl>
    implements _$$RecentErrorImplCopyWith<$Res> {
  __$$RecentErrorImplCopyWithImpl(
      _$RecentErrorImpl _value, $Res Function(_$RecentErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RecentErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RecentErrorImpl implements _RecentError {
  const _$RecentErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RecentStoriesStatus.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentErrorImplCopyWith<_$RecentErrorImpl> get copyWith =>
      __$$RecentErrorImplCopyWithImpl<_$RecentErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NewsEntity> recentStories) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<NewsEntity> recentStories)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NewsEntity> recentStories)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecentLoading value) loading,
    required TResult Function(_RecentSuccess value) success,
    required TResult Function(_RecentError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecentLoading value)? loading,
    TResult? Function(_RecentSuccess value)? success,
    TResult? Function(_RecentError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecentLoading value)? loading,
    TResult Function(_RecentSuccess value)? success,
    TResult Function(_RecentError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _RecentError implements RecentStoriesStatus {
  const factory _RecentError(final String message) = _$RecentErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$RecentErrorImplCopyWith<_$RecentErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
