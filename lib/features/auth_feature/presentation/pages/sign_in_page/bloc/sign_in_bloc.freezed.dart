// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() obsecurePasswordToggle,
    required TResult Function() rememberMeToggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? obsecurePasswordToggle,
    TResult? Function()? rememberMeToggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? obsecurePasswordToggle,
    TResult Function()? rememberMeToggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObsecurePasswordToggle value)
        obsecurePasswordToggle,
    required TResult Function(_RememberMeToggle value) rememberMeToggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ObsecurePasswordToggle value)? obsecurePasswordToggle,
    TResult? Function(_RememberMeToggle value)? rememberMeToggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ObsecurePasswordToggle value)? obsecurePasswordToggle,
    TResult Function(_RememberMeToggle value)? rememberMeToggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ObsecurePasswordToggleImplCopyWith<$Res> {
  factory _$$ObsecurePasswordToggleImplCopyWith(
          _$ObsecurePasswordToggleImpl value,
          $Res Function(_$ObsecurePasswordToggleImpl) then) =
      __$$ObsecurePasswordToggleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ObsecurePasswordToggleImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$ObsecurePasswordToggleImpl>
    implements _$$ObsecurePasswordToggleImplCopyWith<$Res> {
  __$$ObsecurePasswordToggleImplCopyWithImpl(
      _$ObsecurePasswordToggleImpl _value,
      $Res Function(_$ObsecurePasswordToggleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ObsecurePasswordToggleImpl implements _ObsecurePasswordToggle {
  const _$ObsecurePasswordToggleImpl();

  @override
  String toString() {
    return 'SignInEvent.obsecurePasswordToggle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObsecurePasswordToggleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() obsecurePasswordToggle,
    required TResult Function() rememberMeToggle,
  }) {
    return obsecurePasswordToggle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? obsecurePasswordToggle,
    TResult? Function()? rememberMeToggle,
  }) {
    return obsecurePasswordToggle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? obsecurePasswordToggle,
    TResult Function()? rememberMeToggle,
    required TResult orElse(),
  }) {
    if (obsecurePasswordToggle != null) {
      return obsecurePasswordToggle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObsecurePasswordToggle value)
        obsecurePasswordToggle,
    required TResult Function(_RememberMeToggle value) rememberMeToggle,
  }) {
    return obsecurePasswordToggle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ObsecurePasswordToggle value)? obsecurePasswordToggle,
    TResult? Function(_RememberMeToggle value)? rememberMeToggle,
  }) {
    return obsecurePasswordToggle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ObsecurePasswordToggle value)? obsecurePasswordToggle,
    TResult Function(_RememberMeToggle value)? rememberMeToggle,
    required TResult orElse(),
  }) {
    if (obsecurePasswordToggle != null) {
      return obsecurePasswordToggle(this);
    }
    return orElse();
  }
}

abstract class _ObsecurePasswordToggle implements SignInEvent {
  const factory _ObsecurePasswordToggle() = _$ObsecurePasswordToggleImpl;
}

/// @nodoc
abstract class _$$RememberMeToggleImplCopyWith<$Res> {
  factory _$$RememberMeToggleImplCopyWith(_$RememberMeToggleImpl value,
          $Res Function(_$RememberMeToggleImpl) then) =
      __$$RememberMeToggleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RememberMeToggleImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$RememberMeToggleImpl>
    implements _$$RememberMeToggleImplCopyWith<$Res> {
  __$$RememberMeToggleImplCopyWithImpl(_$RememberMeToggleImpl _value,
      $Res Function(_$RememberMeToggleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RememberMeToggleImpl implements _RememberMeToggle {
  const _$RememberMeToggleImpl();

  @override
  String toString() {
    return 'SignInEvent.rememberMeToggle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RememberMeToggleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() obsecurePasswordToggle,
    required TResult Function() rememberMeToggle,
  }) {
    return rememberMeToggle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? obsecurePasswordToggle,
    TResult? Function()? rememberMeToggle,
  }) {
    return rememberMeToggle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? obsecurePasswordToggle,
    TResult Function()? rememberMeToggle,
    required TResult orElse(),
  }) {
    if (rememberMeToggle != null) {
      return rememberMeToggle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObsecurePasswordToggle value)
        obsecurePasswordToggle,
    required TResult Function(_RememberMeToggle value) rememberMeToggle,
  }) {
    return rememberMeToggle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ObsecurePasswordToggle value)? obsecurePasswordToggle,
    TResult? Function(_RememberMeToggle value)? rememberMeToggle,
  }) {
    return rememberMeToggle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ObsecurePasswordToggle value)? obsecurePasswordToggle,
    TResult Function(_RememberMeToggle value)? rememberMeToggle,
    required TResult orElse(),
  }) {
    if (rememberMeToggle != null) {
      return rememberMeToggle(this);
    }
    return orElse();
  }
}

abstract class _RememberMeToggle implements SignInEvent {
  const factory _RememberMeToggle() = _$RememberMeToggleImpl;
}

/// @nodoc
mixin _$SignInState {
  bool get obscurePassword => throw _privateConstructorUsedError;
  bool get rememberMe => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call({bool obscurePassword, bool rememberMe, bool isSubmitting});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? obscurePassword = null,
    Object? rememberMe = null,
    Object? isSubmitting = null,
  }) {
    return _then(_value.copyWith(
      obscurePassword: null == obscurePassword
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInStateImplCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$SignInStateImplCopyWith(
          _$SignInStateImpl value, $Res Function(_$SignInStateImpl) then) =
      __$$SignInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool obscurePassword, bool rememberMe, bool isSubmitting});
}

/// @nodoc
class __$$SignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateImpl>
    implements _$$SignInStateImplCopyWith<$Res> {
  __$$SignInStateImplCopyWithImpl(
      _$SignInStateImpl _value, $Res Function(_$SignInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? obscurePassword = null,
    Object? rememberMe = null,
    Object? isSubmitting = null,
  }) {
    return _then(_$SignInStateImpl(
      obscurePassword: null == obscurePassword
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SignInStateImpl implements _SignInState {
  const _$SignInStateImpl(
      {this.obscurePassword = true,
      this.rememberMe = false,
      this.isSubmitting = false});

  @override
  @JsonKey()
  final bool obscurePassword;
  @override
  @JsonKey()
  final bool rememberMe;
  @override
  @JsonKey()
  final bool isSubmitting;

  @override
  String toString() {
    return 'SignInState(obscurePassword: $obscurePassword, rememberMe: $rememberMe, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateImpl &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword) &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, obscurePassword, rememberMe, isSubmitting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      __$$SignInStateImplCopyWithImpl<_$SignInStateImpl>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {final bool obscurePassword,
      final bool rememberMe,
      final bool isSubmitting}) = _$SignInStateImpl;

  @override
  bool get obscurePassword;
  @override
  bool get rememberMe;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
