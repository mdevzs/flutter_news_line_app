// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_loading_more.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoadingMore {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingMoreLoding value) loading,
    required TResult Function(_LoadingMoreError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingMoreLoding value)? loading,
    TResult? Function(_LoadingMoreError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingMoreLoding value)? loading,
    TResult Function(_LoadingMoreError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingMoreCopyWith<$Res> {
  factory $LoadingMoreCopyWith(
          LoadingMore value, $Res Function(LoadingMore) then) =
      _$LoadingMoreCopyWithImpl<$Res, LoadingMore>;
}

/// @nodoc
class _$LoadingMoreCopyWithImpl<$Res, $Val extends LoadingMore>
    implements $LoadingMoreCopyWith<$Res> {
  _$LoadingMoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingMoreLodingImplCopyWith<$Res> {
  factory _$$LoadingMoreLodingImplCopyWith(_$LoadingMoreLodingImpl value,
          $Res Function(_$LoadingMoreLodingImpl) then) =
      __$$LoadingMoreLodingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingMoreLodingImplCopyWithImpl<$Res>
    extends _$LoadingMoreCopyWithImpl<$Res, _$LoadingMoreLodingImpl>
    implements _$$LoadingMoreLodingImplCopyWith<$Res> {
  __$$LoadingMoreLodingImplCopyWithImpl(_$LoadingMoreLodingImpl _value,
      $Res Function(_$LoadingMoreLodingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingMoreLodingImpl implements _LoadingMoreLoding {
  const _$LoadingMoreLodingImpl();

  @override
  String toString() {
    return 'LoadingMore.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingMoreLodingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
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
    required TResult Function(_LoadingMoreLoding value) loading,
    required TResult Function(_LoadingMoreError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingMoreLoding value)? loading,
    TResult? Function(_LoadingMoreError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingMoreLoding value)? loading,
    TResult Function(_LoadingMoreError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingMoreLoding implements LoadingMore {
  const factory _LoadingMoreLoding() = _$LoadingMoreLodingImpl;
}

/// @nodoc
abstract class _$$LoadingMoreErrorImplCopyWith<$Res> {
  factory _$$LoadingMoreErrorImplCopyWith(_$LoadingMoreErrorImpl value,
          $Res Function(_$LoadingMoreErrorImpl) then) =
      __$$LoadingMoreErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoadingMoreErrorImplCopyWithImpl<$Res>
    extends _$LoadingMoreCopyWithImpl<$Res, _$LoadingMoreErrorImpl>
    implements _$$LoadingMoreErrorImplCopyWith<$Res> {
  __$$LoadingMoreErrorImplCopyWithImpl(_$LoadingMoreErrorImpl _value,
      $Res Function(_$LoadingMoreErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoadingMoreErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadingMoreErrorImpl implements _LoadingMoreError {
  const _$LoadingMoreErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoadingMore.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingMoreErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingMoreErrorImplCopyWith<_$LoadingMoreErrorImpl> get copyWith =>
      __$$LoadingMoreErrorImplCopyWithImpl<_$LoadingMoreErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
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
    required TResult Function(_LoadingMoreLoding value) loading,
    required TResult Function(_LoadingMoreError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingMoreLoding value)? loading,
    TResult? Function(_LoadingMoreError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingMoreLoding value)? loading,
    TResult Function(_LoadingMoreError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _LoadingMoreError implements LoadingMore {
  const factory _LoadingMoreError(final String message) =
      _$LoadingMoreErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$LoadingMoreErrorImplCopyWith<_$LoadingMoreErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
