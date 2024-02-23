// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_comment_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddCommentStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCommentStatusInitial value) initial,
    required TResult Function(_AddCommentStatusLoading value) loading,
    required TResult Function(_AddCommentStatusSuccess value) success,
    required TResult Function(_AddCommentStatusError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCommentStatusInitial value)? initial,
    TResult? Function(_AddCommentStatusLoading value)? loading,
    TResult? Function(_AddCommentStatusSuccess value)? success,
    TResult? Function(_AddCommentStatusError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCommentStatusInitial value)? initial,
    TResult Function(_AddCommentStatusLoading value)? loading,
    TResult Function(_AddCommentStatusSuccess value)? success,
    TResult Function(_AddCommentStatusError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCommentStatusCopyWith<$Res> {
  factory $AddCommentStatusCopyWith(
          AddCommentStatus value, $Res Function(AddCommentStatus) then) =
      _$AddCommentStatusCopyWithImpl<$Res, AddCommentStatus>;
}

/// @nodoc
class _$AddCommentStatusCopyWithImpl<$Res, $Val extends AddCommentStatus>
    implements $AddCommentStatusCopyWith<$Res> {
  _$AddCommentStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddCommentStatusInitialImplCopyWith<$Res> {
  factory _$$AddCommentStatusInitialImplCopyWith(
          _$AddCommentStatusInitialImpl value,
          $Res Function(_$AddCommentStatusInitialImpl) then) =
      __$$AddCommentStatusInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddCommentStatusInitialImplCopyWithImpl<$Res>
    extends _$AddCommentStatusCopyWithImpl<$Res, _$AddCommentStatusInitialImpl>
    implements _$$AddCommentStatusInitialImplCopyWith<$Res> {
  __$$AddCommentStatusInitialImplCopyWithImpl(
      _$AddCommentStatusInitialImpl _value,
      $Res Function(_$AddCommentStatusInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddCommentStatusInitialImpl implements _AddCommentStatusInitial {
  const _$AddCommentStatusInitialImpl();

  @override
  String toString() {
    return 'AddCommentStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCommentStatusInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(_AddCommentStatusInitial value) initial,
    required TResult Function(_AddCommentStatusLoading value) loading,
    required TResult Function(_AddCommentStatusSuccess value) success,
    required TResult Function(_AddCommentStatusError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCommentStatusInitial value)? initial,
    TResult? Function(_AddCommentStatusLoading value)? loading,
    TResult? Function(_AddCommentStatusSuccess value)? success,
    TResult? Function(_AddCommentStatusError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCommentStatusInitial value)? initial,
    TResult Function(_AddCommentStatusLoading value)? loading,
    TResult Function(_AddCommentStatusSuccess value)? success,
    TResult Function(_AddCommentStatusError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AddCommentStatusInitial implements AddCommentStatus {
  const factory _AddCommentStatusInitial() = _$AddCommentStatusInitialImpl;
}

/// @nodoc
abstract class _$$AddCommentStatusLoadingImplCopyWith<$Res> {
  factory _$$AddCommentStatusLoadingImplCopyWith(
          _$AddCommentStatusLoadingImpl value,
          $Res Function(_$AddCommentStatusLoadingImpl) then) =
      __$$AddCommentStatusLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddCommentStatusLoadingImplCopyWithImpl<$Res>
    extends _$AddCommentStatusCopyWithImpl<$Res, _$AddCommentStatusLoadingImpl>
    implements _$$AddCommentStatusLoadingImplCopyWith<$Res> {
  __$$AddCommentStatusLoadingImplCopyWithImpl(
      _$AddCommentStatusLoadingImpl _value,
      $Res Function(_$AddCommentStatusLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddCommentStatusLoadingImpl implements _AddCommentStatusLoading {
  const _$AddCommentStatusLoadingImpl();

  @override
  String toString() {
    return 'AddCommentStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCommentStatusLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(_AddCommentStatusInitial value) initial,
    required TResult Function(_AddCommentStatusLoading value) loading,
    required TResult Function(_AddCommentStatusSuccess value) success,
    required TResult Function(_AddCommentStatusError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCommentStatusInitial value)? initial,
    TResult? Function(_AddCommentStatusLoading value)? loading,
    TResult? Function(_AddCommentStatusSuccess value)? success,
    TResult? Function(_AddCommentStatusError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCommentStatusInitial value)? initial,
    TResult Function(_AddCommentStatusLoading value)? loading,
    TResult Function(_AddCommentStatusSuccess value)? success,
    TResult Function(_AddCommentStatusError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AddCommentStatusLoading implements AddCommentStatus {
  const factory _AddCommentStatusLoading() = _$AddCommentStatusLoadingImpl;
}

/// @nodoc
abstract class _$$AddCommentStatusSuccessImplCopyWith<$Res> {
  factory _$$AddCommentStatusSuccessImplCopyWith(
          _$AddCommentStatusSuccessImpl value,
          $Res Function(_$AddCommentStatusSuccessImpl) then) =
      __$$AddCommentStatusSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddCommentStatusSuccessImplCopyWithImpl<$Res>
    extends _$AddCommentStatusCopyWithImpl<$Res, _$AddCommentStatusSuccessImpl>
    implements _$$AddCommentStatusSuccessImplCopyWith<$Res> {
  __$$AddCommentStatusSuccessImplCopyWithImpl(
      _$AddCommentStatusSuccessImpl _value,
      $Res Function(_$AddCommentStatusSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddCommentStatusSuccessImpl implements _AddCommentStatusSuccess {
  const _$AddCommentStatusSuccessImpl();

  @override
  String toString() {
    return 'AddCommentStatus.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCommentStatusSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCommentStatusInitial value) initial,
    required TResult Function(_AddCommentStatusLoading value) loading,
    required TResult Function(_AddCommentStatusSuccess value) success,
    required TResult Function(_AddCommentStatusError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCommentStatusInitial value)? initial,
    TResult? Function(_AddCommentStatusLoading value)? loading,
    TResult? Function(_AddCommentStatusSuccess value)? success,
    TResult? Function(_AddCommentStatusError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCommentStatusInitial value)? initial,
    TResult Function(_AddCommentStatusLoading value)? loading,
    TResult Function(_AddCommentStatusSuccess value)? success,
    TResult Function(_AddCommentStatusError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _AddCommentStatusSuccess implements AddCommentStatus {
  const factory _AddCommentStatusSuccess() = _$AddCommentStatusSuccessImpl;
}

/// @nodoc
abstract class _$$AddCommentStatusErrorImplCopyWith<$Res> {
  factory _$$AddCommentStatusErrorImplCopyWith(
          _$AddCommentStatusErrorImpl value,
          $Res Function(_$AddCommentStatusErrorImpl) then) =
      __$$AddCommentStatusErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AddCommentStatusErrorImplCopyWithImpl<$Res>
    extends _$AddCommentStatusCopyWithImpl<$Res, _$AddCommentStatusErrorImpl>
    implements _$$AddCommentStatusErrorImplCopyWith<$Res> {
  __$$AddCommentStatusErrorImplCopyWithImpl(_$AddCommentStatusErrorImpl _value,
      $Res Function(_$AddCommentStatusErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AddCommentStatusErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddCommentStatusErrorImpl implements _AddCommentStatusError {
  const _$AddCommentStatusErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AddCommentStatus.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCommentStatusErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCommentStatusErrorImplCopyWith<_$AddCommentStatusErrorImpl>
      get copyWith => __$$AddCommentStatusErrorImplCopyWithImpl<
          _$AddCommentStatusErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(_AddCommentStatusInitial value) initial,
    required TResult Function(_AddCommentStatusLoading value) loading,
    required TResult Function(_AddCommentStatusSuccess value) success,
    required TResult Function(_AddCommentStatusError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCommentStatusInitial value)? initial,
    TResult? Function(_AddCommentStatusLoading value)? loading,
    TResult? Function(_AddCommentStatusSuccess value)? success,
    TResult? Function(_AddCommentStatusError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCommentStatusInitial value)? initial,
    TResult Function(_AddCommentStatusLoading value)? loading,
    TResult Function(_AddCommentStatusSuccess value)? success,
    TResult Function(_AddCommentStatusError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AddCommentStatusError implements AddCommentStatus {
  const factory _AddCommentStatusError(final String message) =
      _$AddCommentStatusErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$AddCommentStatusErrorImplCopyWith<_$AddCommentStatusErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
