// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_submited_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInSubmittedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity user) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity user)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity user)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SignInSubmittedStateLoaded value) loaded,
    required TResult Function(_$SignInSubmittedStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$SignInSubmittedStateLoaded value)? loaded,
    TResult? Function(_$SignInSubmittedStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SignInSubmittedStateLoaded value)? loaded,
    TResult Function(_$SignInSubmittedStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInSubmittedStateCopyWith<$Res> {
  factory $SignInSubmittedStateCopyWith(SignInSubmittedState value,
          $Res Function(SignInSubmittedState) then) =
      _$SignInSubmittedStateCopyWithImpl<$Res, SignInSubmittedState>;
}

/// @nodoc
class _$SignInSubmittedStateCopyWithImpl<$Res,
        $Val extends SignInSubmittedState>
    implements $SignInSubmittedStateCopyWith<$Res> {
  _$SignInSubmittedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$$SignInSubmittedStateLoadedImplCopyWith<$Res> {
  factory _$$$SignInSubmittedStateLoadedImplCopyWith(
          _$$SignInSubmittedStateLoadedImpl value,
          $Res Function(_$$SignInSubmittedStateLoadedImpl) then) =
      __$$$SignInSubmittedStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user});

  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$$SignInSubmittedStateLoadedImplCopyWithImpl<$Res>
    extends _$SignInSubmittedStateCopyWithImpl<$Res,
        _$$SignInSubmittedStateLoadedImpl>
    implements _$$$SignInSubmittedStateLoadedImplCopyWith<$Res> {
  __$$$SignInSubmittedStateLoadedImplCopyWithImpl(
      _$$SignInSubmittedStateLoadedImpl _value,
      $Res Function(_$$SignInSubmittedStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$$SignInSubmittedStateLoadedImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$$SignInSubmittedStateLoadedImpl
    implements _$SignInSubmittedStateLoaded {
  const _$$SignInSubmittedStateLoadedImpl(this.user);

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'SignInSubmittedState.loaded(user: $user)';
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$SignInSubmittedStateLoadedImplCopyWith<_$$SignInSubmittedStateLoadedImpl>
      get copyWith => __$$$SignInSubmittedStateLoadedImplCopyWithImpl<
          _$$SignInSubmittedStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity user) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity user)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity user)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SignInSubmittedStateLoaded value) loaded,
    required TResult Function(_$SignInSubmittedStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$SignInSubmittedStateLoaded value)? loaded,
    TResult? Function(_$SignInSubmittedStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SignInSubmittedStateLoaded value)? loaded,
    TResult Function(_$SignInSubmittedStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _$SignInSubmittedStateLoaded implements SignInSubmittedState {
  const factory _$SignInSubmittedStateLoaded(final UserEntity user) =
      _$$SignInSubmittedStateLoadedImpl;

  UserEntity get user;
  @JsonKey(ignore: true)
  _$$$SignInSubmittedStateLoadedImplCopyWith<_$$SignInSubmittedStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$SignInSubmittedStateErrorImplCopyWith<$Res> {
  factory _$$$SignInSubmittedStateErrorImplCopyWith(
          _$$SignInSubmittedStateErrorImpl value,
          $Res Function(_$$SignInSubmittedStateErrorImpl) then) =
      __$$$SignInSubmittedStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$$SignInSubmittedStateErrorImplCopyWithImpl<$Res>
    extends _$SignInSubmittedStateCopyWithImpl<$Res,
        _$$SignInSubmittedStateErrorImpl>
    implements _$$$SignInSubmittedStateErrorImplCopyWith<$Res> {
  __$$$SignInSubmittedStateErrorImplCopyWithImpl(
      _$$SignInSubmittedStateErrorImpl _value,
      $Res Function(_$$SignInSubmittedStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$$SignInSubmittedStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$$SignInSubmittedStateErrorImpl implements _$SignInSubmittedStateError {
  const _$$SignInSubmittedStateErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SignInSubmittedState.error(message: $message)';
  }  

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$SignInSubmittedStateErrorImplCopyWith<_$$SignInSubmittedStateErrorImpl>
      get copyWith => __$$$SignInSubmittedStateErrorImplCopyWithImpl<
          _$$SignInSubmittedStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity user) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity user)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity user)? loaded,
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
    required TResult Function(_$SignInSubmittedStateLoaded value) loaded,
    required TResult Function(_$SignInSubmittedStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$SignInSubmittedStateLoaded value)? loaded,
    TResult? Function(_$SignInSubmittedStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SignInSubmittedStateLoaded value)? loaded,
    TResult Function(_$SignInSubmittedStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _$SignInSubmittedStateError implements SignInSubmittedState {
  const factory _$SignInSubmittedStateError(final String message) =
      _$$SignInSubmittedStateErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$$SignInSubmittedStateErrorImplCopyWith<_$$SignInSubmittedStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
