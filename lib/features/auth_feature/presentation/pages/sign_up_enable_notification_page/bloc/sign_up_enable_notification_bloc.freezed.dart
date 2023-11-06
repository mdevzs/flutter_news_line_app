// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_enable_notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpEnableNotificationEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) toggleSwitch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? toggleSwitch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? toggleSwitch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleSwitch value) toggleSwitch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleSwitch value)? toggleSwitch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleSwitch value)? toggleSwitch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpEnableNotificationEventCopyWith<SignUpEnableNotificationEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEnableNotificationEventCopyWith<$Res> {
  factory $SignUpEnableNotificationEventCopyWith(
          SignUpEnableNotificationEvent value,
          $Res Function(SignUpEnableNotificationEvent) then) =
      _$SignUpEnableNotificationEventCopyWithImpl<$Res,
          SignUpEnableNotificationEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$SignUpEnableNotificationEventCopyWithImpl<$Res,
        $Val extends SignUpEnableNotificationEvent>
    implements $SignUpEnableNotificationEventCopyWith<$Res> {
  _$SignUpEnableNotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToggleSwitchImplCopyWith<$Res>
    implements $SignUpEnableNotificationEventCopyWith<$Res> {
  factory _$$ToggleSwitchImplCopyWith(
          _$ToggleSwitchImpl value, $Res Function(_$ToggleSwitchImpl) then) =
      __$$ToggleSwitchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ToggleSwitchImplCopyWithImpl<$Res>
    extends _$SignUpEnableNotificationEventCopyWithImpl<$Res,
        _$ToggleSwitchImpl> implements _$$ToggleSwitchImplCopyWith<$Res> {
  __$$ToggleSwitchImplCopyWithImpl(
      _$ToggleSwitchImpl _value, $Res Function(_$ToggleSwitchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ToggleSwitchImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ToggleSwitchImpl implements _ToggleSwitch {
  const _$ToggleSwitchImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'SignUpEnableNotificationEvent.toggleSwitch(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleSwitchImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleSwitchImplCopyWith<_$ToggleSwitchImpl> get copyWith =>
      __$$ToggleSwitchImplCopyWithImpl<_$ToggleSwitchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) toggleSwitch,
  }) {
    return toggleSwitch(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? toggleSwitch,
  }) {
    return toggleSwitch?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? toggleSwitch,
    required TResult orElse(),
  }) {
    if (toggleSwitch != null) {
      return toggleSwitch(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleSwitch value) toggleSwitch,
  }) {
    return toggleSwitch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleSwitch value)? toggleSwitch,
  }) {
    return toggleSwitch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleSwitch value)? toggleSwitch,
    required TResult orElse(),
  }) {
    if (toggleSwitch != null) {
      return toggleSwitch(this);
    }
    return orElse();
  }
}

abstract class _ToggleSwitch implements SignUpEnableNotificationEvent {
  const factory _ToggleSwitch(final int index) = _$ToggleSwitchImpl;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$ToggleSwitchImplCopyWith<_$ToggleSwitchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpEnableNotificationState {
  List<int> get selectedNotifications => throw _privateConstructorUsedError;
  set selectedNotifications(List<int> value) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpEnableNotificationStateCopyWith<SignUpEnableNotificationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEnableNotificationStateCopyWith<$Res> {
  factory $SignUpEnableNotificationStateCopyWith(
          SignUpEnableNotificationState value,
          $Res Function(SignUpEnableNotificationState) then) =
      _$SignUpEnableNotificationStateCopyWithImpl<$Res,
          SignUpEnableNotificationState>;
  @useResult
  $Res call({List<int> selectedNotifications});
}

/// @nodoc
class _$SignUpEnableNotificationStateCopyWithImpl<$Res,
        $Val extends SignUpEnableNotificationState>
    implements $SignUpEnableNotificationStateCopyWith<$Res> {
  _$SignUpEnableNotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedNotifications = null,
  }) {
    return _then(_value.copyWith(
      selectedNotifications: null == selectedNotifications
          ? _value.selectedNotifications
          : selectedNotifications // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpEnableNotificationStateImplCopyWith<$Res>
    implements $SignUpEnableNotificationStateCopyWith<$Res> {
  factory _$$SignUpEnableNotificationStateImplCopyWith(
          _$SignUpEnableNotificationStateImpl value,
          $Res Function(_$SignUpEnableNotificationStateImpl) then) =
      __$$SignUpEnableNotificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> selectedNotifications});
}

/// @nodoc
class __$$SignUpEnableNotificationStateImplCopyWithImpl<$Res>
    extends _$SignUpEnableNotificationStateCopyWithImpl<$Res,
        _$SignUpEnableNotificationStateImpl>
    implements _$$SignUpEnableNotificationStateImplCopyWith<$Res> {
  __$$SignUpEnableNotificationStateImplCopyWithImpl(
      _$SignUpEnableNotificationStateImpl _value,
      $Res Function(_$SignUpEnableNotificationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedNotifications = null,
  }) {
    return _then(_$SignUpEnableNotificationStateImpl(
      selectedNotifications: null == selectedNotifications
          ? _value.selectedNotifications
          : selectedNotifications // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$SignUpEnableNotificationStateImpl
    implements _SignUpEnableNotificationState {
  _$SignUpEnableNotificationStateImpl({required this.selectedNotifications});

  @override
  List<int> selectedNotifications;

  @override
  String toString() {
    return 'SignUpEnableNotificationState(selectedNotifications: $selectedNotifications)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpEnableNotificationStateImplCopyWith<
          _$SignUpEnableNotificationStateImpl>
      get copyWith => __$$SignUpEnableNotificationStateImplCopyWithImpl<
          _$SignUpEnableNotificationStateImpl>(this, _$identity);
}

abstract class _SignUpEnableNotificationState
    implements SignUpEnableNotificationState {
  factory _SignUpEnableNotificationState(
          {required List<int> selectedNotifications}) =
      _$SignUpEnableNotificationStateImpl;

  @override
  List<int> get selectedNotifications;
  set selectedNotifications(List<int> value);
  @override
  @JsonKey(ignore: true)
  _$$SignUpEnableNotificationStateImplCopyWith<
          _$SignUpEnableNotificationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
