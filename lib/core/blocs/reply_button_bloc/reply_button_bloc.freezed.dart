// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_button_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReplyButtonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleShowReplies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleShowReplies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleShowReplies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleShowReplies value) toggleShowReplies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleShowReplies value)? toggleShowReplies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleShowReplies value)? toggleShowReplies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyButtonEventCopyWith<$Res> {
  factory $ReplyButtonEventCopyWith(
          ReplyButtonEvent value, $Res Function(ReplyButtonEvent) then) =
      _$ReplyButtonEventCopyWithImpl<$Res, ReplyButtonEvent>;
}

/// @nodoc
class _$ReplyButtonEventCopyWithImpl<$Res, $Val extends ReplyButtonEvent>
    implements $ReplyButtonEventCopyWith<$Res> {
  _$ReplyButtonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ToggleShowRepliesImplCopyWith<$Res> {
  factory _$$ToggleShowRepliesImplCopyWith(_$ToggleShowRepliesImpl value,
          $Res Function(_$ToggleShowRepliesImpl) then) =
      __$$ToggleShowRepliesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleShowRepliesImplCopyWithImpl<$Res>
    extends _$ReplyButtonEventCopyWithImpl<$Res, _$ToggleShowRepliesImpl>
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
    return 'ReplyButtonEvent.toggleShowReplies()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleShowRepliesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleShowReplies,
  }) {
    return toggleShowReplies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleShowReplies,
  }) {
    return toggleShowReplies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_ToggleShowReplies value) toggleShowReplies,
  }) {
    return toggleShowReplies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleShowReplies value)? toggleShowReplies,
  }) {
    return toggleShowReplies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleShowReplies value)? toggleShowReplies,
    required TResult orElse(),
  }) {
    if (toggleShowReplies != null) {
      return toggleShowReplies(this);
    }
    return orElse();
  }
}

abstract class _ToggleShowReplies implements ReplyButtonEvent {
  const factory _ToggleShowReplies() = _$ToggleShowRepliesImpl;
}

/// @nodoc
mixin _$ReplyButtonState {
  bool get showReplies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReplyButtonStateCopyWith<ReplyButtonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyButtonStateCopyWith<$Res> {
  factory $ReplyButtonStateCopyWith(
          ReplyButtonState value, $Res Function(ReplyButtonState) then) =
      _$ReplyButtonStateCopyWithImpl<$Res, ReplyButtonState>;
  @useResult
  $Res call({bool showReplies});
}

/// @nodoc
class _$ReplyButtonStateCopyWithImpl<$Res, $Val extends ReplyButtonState>
    implements $ReplyButtonStateCopyWith<$Res> {
  _$ReplyButtonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showReplies = null,
  }) {
    return _then(_value.copyWith(
      showReplies: null == showReplies
          ? _value.showReplies
          : showReplies // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplyButtonStateImplCopyWith<$Res>
    implements $ReplyButtonStateCopyWith<$Res> {
  factory _$$ReplyButtonStateImplCopyWith(_$ReplyButtonStateImpl value,
          $Res Function(_$ReplyButtonStateImpl) then) =
      __$$ReplyButtonStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showReplies});
}

/// @nodoc
class __$$ReplyButtonStateImplCopyWithImpl<$Res>
    extends _$ReplyButtonStateCopyWithImpl<$Res, _$ReplyButtonStateImpl>
    implements _$$ReplyButtonStateImplCopyWith<$Res> {
  __$$ReplyButtonStateImplCopyWithImpl(_$ReplyButtonStateImpl _value,
      $Res Function(_$ReplyButtonStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showReplies = null,
  }) {
    return _then(_$ReplyButtonStateImpl(
      showReplies: null == showReplies
          ? _value.showReplies
          : showReplies // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ReplyButtonStateImpl implements _ReplyButtonState {
  const _$ReplyButtonStateImpl({this.showReplies = false});

  @override
  @JsonKey()
  final bool showReplies;

  @override
  String toString() {
    return 'ReplyButtonState(showReplies: $showReplies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyButtonStateImpl &&
            (identical(other.showReplies, showReplies) ||
                other.showReplies == showReplies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showReplies);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyButtonStateImplCopyWith<_$ReplyButtonStateImpl> get copyWith =>
      __$$ReplyButtonStateImplCopyWithImpl<_$ReplyButtonStateImpl>(
          this, _$identity);
}

abstract class _ReplyButtonState implements ReplyButtonState {
  const factory _ReplyButtonState({final bool showReplies}) =
      _$ReplyButtonStateImpl;

  @override
  bool get showReplies;
  @override
  @JsonKey(ignore: true)
  _$$ReplyButtonStateImplCopyWith<_$ReplyButtonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
