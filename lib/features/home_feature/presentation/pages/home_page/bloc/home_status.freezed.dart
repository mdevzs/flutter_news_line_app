// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HomeEntity home) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HomeEntity home)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HomeEntity home)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitial value) initial,
    required TResult Function(_HomeLoading value) loading,
    required TResult Function(_HomeSuccess value) success,
    required TResult Function(_HomeError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitial value)? initial,
    TResult? Function(_HomeLoading value)? loading,
    TResult? Function(_HomeSuccess value)? success,
    TResult? Function(_HomeError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitial value)? initial,
    TResult Function(_HomeLoading value)? loading,
    TResult Function(_HomeSuccess value)? success,
    TResult Function(_HomeError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStatusCopyWith<$Res> {
  factory $HomeStatusCopyWith(
          HomeStatus value, $Res Function(HomeStatus) then) =
      _$HomeStatusCopyWithImpl<$Res, HomeStatus>;
}

/// @nodoc
class _$HomeStatusCopyWithImpl<$Res, $Val extends HomeStatus>
    implements $HomeStatusCopyWith<$Res> {
  _$HomeStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeInitialImplCopyWith<$Res> {
  factory _$$HomeInitialImplCopyWith(
          _$HomeInitialImpl value, $Res Function(_$HomeInitialImpl) then) =
      __$$HomeInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeInitialImplCopyWithImpl<$Res>
    extends _$HomeStatusCopyWithImpl<$Res, _$HomeInitialImpl>
    implements _$$HomeInitialImplCopyWith<$Res> {
  __$$HomeInitialImplCopyWithImpl(
      _$HomeInitialImpl _value, $Res Function(_$HomeInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeInitialImpl implements _HomeInitial {
  const _$HomeInitialImpl();

  @override
  String toString() {
    return 'HomeStatus.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HomeEntity home) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HomeEntity home)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HomeEntity home)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitial value) initial,
    required TResult Function(_HomeLoading value) loading,
    required TResult Function(_HomeSuccess value) success,
    required TResult Function(_HomeError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitial value)? initial,
    TResult? Function(_HomeLoading value)? loading,
    TResult? Function(_HomeSuccess value)? success,
    TResult? Function(_HomeError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitial value)? initial,
    TResult Function(_HomeLoading value)? loading,
    TResult Function(_HomeSuccess value)? success,
    TResult Function(_HomeError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _HomeInitial implements HomeStatus {
  const factory _HomeInitial() = _$HomeInitialImpl;
}

/// @nodoc
abstract class _$$HomeLoadingImplCopyWith<$Res> {
  factory _$$HomeLoadingImplCopyWith(
          _$HomeLoadingImpl value, $Res Function(_$HomeLoadingImpl) then) =
      __$$HomeLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeLoadingImplCopyWithImpl<$Res>
    extends _$HomeStatusCopyWithImpl<$Res, _$HomeLoadingImpl>
    implements _$$HomeLoadingImplCopyWith<$Res> {
  __$$HomeLoadingImplCopyWithImpl(
      _$HomeLoadingImpl _value, $Res Function(_$HomeLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeLoadingImpl implements _HomeLoading {
  const _$HomeLoadingImpl();

  @override
  String toString() {
    return 'HomeStatus.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HomeEntity home) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HomeEntity home)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HomeEntity home)? success,
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
    required TResult Function(_HomeInitial value) initial,
    required TResult Function(_HomeLoading value) loading,
    required TResult Function(_HomeSuccess value) success,
    required TResult Function(_HomeError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitial value)? initial,
    TResult? Function(_HomeLoading value)? loading,
    TResult? Function(_HomeSuccess value)? success,
    TResult? Function(_HomeError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitial value)? initial,
    TResult Function(_HomeLoading value)? loading,
    TResult Function(_HomeSuccess value)? success,
    TResult Function(_HomeError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HomeLoading implements HomeStatus {
  const factory _HomeLoading() = _$HomeLoadingImpl;
}

/// @nodoc
abstract class _$$HomeSuccessImplCopyWith<$Res> {
  factory _$$HomeSuccessImplCopyWith(
          _$HomeSuccessImpl value, $Res Function(_$HomeSuccessImpl) then) =
      __$$HomeSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HomeEntity home});

  $HomeEntityCopyWith<$Res> get home;
}

/// @nodoc
class __$$HomeSuccessImplCopyWithImpl<$Res>
    extends _$HomeStatusCopyWithImpl<$Res, _$HomeSuccessImpl>
    implements _$$HomeSuccessImplCopyWith<$Res> {
  __$$HomeSuccessImplCopyWithImpl(
      _$HomeSuccessImpl _value, $Res Function(_$HomeSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home = null,
  }) {
    return _then(_$HomeSuccessImpl(
      null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as HomeEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeEntityCopyWith<$Res> get home {
    return $HomeEntityCopyWith<$Res>(_value.home, (value) {
      return _then(_value.copyWith(home: value));
    });
  }
}

/// @nodoc

class _$HomeSuccessImpl implements _HomeSuccess {
  const _$HomeSuccessImpl(this.home);

  @override
  final HomeEntity home;

  @override
  String toString() {
    return 'HomeStatus.success(home: $home)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSuccessImpl &&
            (identical(other.home, home) || other.home == home));
  }

  @override
  int get hashCode => Object.hash(runtimeType, home);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeSuccessImplCopyWith<_$HomeSuccessImpl> get copyWith =>
      __$$HomeSuccessImplCopyWithImpl<_$HomeSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HomeEntity home) success,
    required TResult Function(String message) error,
  }) {
    return success(home);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HomeEntity home)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(home);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HomeEntity home)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(home);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitial value) initial,
    required TResult Function(_HomeLoading value) loading,
    required TResult Function(_HomeSuccess value) success,
    required TResult Function(_HomeError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitial value)? initial,
    TResult? Function(_HomeLoading value)? loading,
    TResult? Function(_HomeSuccess value)? success,
    TResult? Function(_HomeError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitial value)? initial,
    TResult Function(_HomeLoading value)? loading,
    TResult Function(_HomeSuccess value)? success,
    TResult Function(_HomeError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _HomeSuccess implements HomeStatus {
  const factory _HomeSuccess(final HomeEntity home) = _$HomeSuccessImpl;

  HomeEntity get home;
  @JsonKey(ignore: true)
  _$$HomeSuccessImplCopyWith<_$HomeSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeErrorImplCopyWith<$Res> {
  factory _$$HomeErrorImplCopyWith(
          _$HomeErrorImpl value, $Res Function(_$HomeErrorImpl) then) =
      __$$HomeErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$HomeErrorImplCopyWithImpl<$Res>
    extends _$HomeStatusCopyWithImpl<$Res, _$HomeErrorImpl>
    implements _$$HomeErrorImplCopyWith<$Res> {
  __$$HomeErrorImplCopyWithImpl(
      _$HomeErrorImpl _value, $Res Function(_$HomeErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$HomeErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeErrorImpl implements _HomeError {
  const _$HomeErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomeStatus.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeErrorImplCopyWith<_$HomeErrorImpl> get copyWith =>
      __$$HomeErrorImplCopyWithImpl<_$HomeErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HomeEntity home) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HomeEntity home)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HomeEntity home)? success,
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
    required TResult Function(_HomeInitial value) initial,
    required TResult Function(_HomeLoading value) loading,
    required TResult Function(_HomeSuccess value) success,
    required TResult Function(_HomeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitial value)? initial,
    TResult? Function(_HomeLoading value)? loading,
    TResult? Function(_HomeSuccess value)? success,
    TResult? Function(_HomeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitial value)? initial,
    TResult Function(_HomeLoading value)? loading,
    TResult Function(_HomeSuccess value)? success,
    TResult Function(_HomeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _HomeError implements HomeStatus {
  const factory _HomeError(final String message) = _$HomeErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$HomeErrorImplCopyWith<_$HomeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
