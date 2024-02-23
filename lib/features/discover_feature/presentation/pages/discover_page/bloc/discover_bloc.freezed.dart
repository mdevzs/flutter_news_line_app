// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discover_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DiscoverEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() discover,
    required TResult Function(String followingId) followAuthor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? discover,
    TResult? Function(String followingId)? followAuthor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? discover,
    TResult Function(String followingId)? followAuthor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Discover value) discover,
    required TResult Function(_DiscoverFollowAuthor value) followAuthor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Discover value)? discover,
    TResult? Function(_DiscoverFollowAuthor value)? followAuthor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Discover value)? discover,
    TResult Function(_DiscoverFollowAuthor value)? followAuthor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverEventCopyWith<$Res> {
  factory $DiscoverEventCopyWith(
          DiscoverEvent value, $Res Function(DiscoverEvent) then) =
      _$DiscoverEventCopyWithImpl<$Res, DiscoverEvent>;
}

/// @nodoc
class _$DiscoverEventCopyWithImpl<$Res, $Val extends DiscoverEvent>
    implements $DiscoverEventCopyWith<$Res> {
  _$DiscoverEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DiscoverImplCopyWith<$Res> {
  factory _$$DiscoverImplCopyWith(
          _$DiscoverImpl value, $Res Function(_$DiscoverImpl) then) =
      __$$DiscoverImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DiscoverImplCopyWithImpl<$Res>
    extends _$DiscoverEventCopyWithImpl<$Res, _$DiscoverImpl>
    implements _$$DiscoverImplCopyWith<$Res> {
  __$$DiscoverImplCopyWithImpl(
      _$DiscoverImpl _value, $Res Function(_$DiscoverImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DiscoverImpl implements _Discover {
  const _$DiscoverImpl();

  @override
  String toString() {
    return 'DiscoverEvent.discover()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DiscoverImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() discover,
    required TResult Function(String followingId) followAuthor,
  }) {
    return discover();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? discover,
    TResult? Function(String followingId)? followAuthor,
  }) {
    return discover?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? discover,
    TResult Function(String followingId)? followAuthor,
    required TResult orElse(),
  }) {
    if (discover != null) {
      return discover();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Discover value) discover,
    required TResult Function(_DiscoverFollowAuthor value) followAuthor,
  }) {
    return discover(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Discover value)? discover,
    TResult? Function(_DiscoverFollowAuthor value)? followAuthor,
  }) {
    return discover?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Discover value)? discover,
    TResult Function(_DiscoverFollowAuthor value)? followAuthor,
    required TResult orElse(),
  }) {
    if (discover != null) {
      return discover(this);
    }
    return orElse();
  }
}

abstract class _Discover implements DiscoverEvent {
  const factory _Discover() = _$DiscoverImpl;
}

/// @nodoc
abstract class _$$DiscoverFollowAuthorImplCopyWith<$Res> {
  factory _$$DiscoverFollowAuthorImplCopyWith(_$DiscoverFollowAuthorImpl value,
          $Res Function(_$DiscoverFollowAuthorImpl) then) =
      __$$DiscoverFollowAuthorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String followingId});
}

/// @nodoc
class __$$DiscoverFollowAuthorImplCopyWithImpl<$Res>
    extends _$DiscoverEventCopyWithImpl<$Res, _$DiscoverFollowAuthorImpl>
    implements _$$DiscoverFollowAuthorImplCopyWith<$Res> {
  __$$DiscoverFollowAuthorImplCopyWithImpl(_$DiscoverFollowAuthorImpl _value,
      $Res Function(_$DiscoverFollowAuthorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followingId = null,
  }) {
    return _then(_$DiscoverFollowAuthorImpl(
      null == followingId
          ? _value.followingId
          : followingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DiscoverFollowAuthorImpl implements _DiscoverFollowAuthor {
  const _$DiscoverFollowAuthorImpl(this.followingId);

  @override
  final String followingId;

  @override
  String toString() {
    return 'DiscoverEvent.followAuthor(followingId: $followingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverFollowAuthorImpl &&
            (identical(other.followingId, followingId) ||
                other.followingId == followingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, followingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoverFollowAuthorImplCopyWith<_$DiscoverFollowAuthorImpl>
      get copyWith =>
          __$$DiscoverFollowAuthorImplCopyWithImpl<_$DiscoverFollowAuthorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() discover,
    required TResult Function(String followingId) followAuthor,
  }) {
    return followAuthor(followingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? discover,
    TResult? Function(String followingId)? followAuthor,
  }) {
    return followAuthor?.call(followingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? discover,
    TResult Function(String followingId)? followAuthor,
    required TResult orElse(),
  }) {
    if (followAuthor != null) {
      return followAuthor(followingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Discover value) discover,
    required TResult Function(_DiscoverFollowAuthor value) followAuthor,
  }) {
    return followAuthor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Discover value)? discover,
    TResult? Function(_DiscoverFollowAuthor value)? followAuthor,
  }) {
    return followAuthor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Discover value)? discover,
    TResult Function(_DiscoverFollowAuthor value)? followAuthor,
    required TResult orElse(),
  }) {
    if (followAuthor != null) {
      return followAuthor(this);
    }
    return orElse();
  }
}

abstract class _DiscoverFollowAuthor implements DiscoverEvent {
  const factory _DiscoverFollowAuthor(final String followingId) =
      _$DiscoverFollowAuthorImpl;

  String get followingId;
  @JsonKey(ignore: true)
  _$$DiscoverFollowAuthorImplCopyWith<_$DiscoverFollowAuthorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DiscoverState {
  DiscoverStatus get discoverStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiscoverStateCopyWith<DiscoverState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverStateCopyWith<$Res> {
  factory $DiscoverStateCopyWith(
          DiscoverState value, $Res Function(DiscoverState) then) =
      _$DiscoverStateCopyWithImpl<$Res, DiscoverState>;
  @useResult
  $Res call({DiscoverStatus discoverStatus});

  $DiscoverStatusCopyWith<$Res> get discoverStatus;
}

/// @nodoc
class _$DiscoverStateCopyWithImpl<$Res, $Val extends DiscoverState>
    implements $DiscoverStateCopyWith<$Res> {
  _$DiscoverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discoverStatus = null,
  }) {
    return _then(_value.copyWith(
      discoverStatus: null == discoverStatus
          ? _value.discoverStatus
          : discoverStatus // ignore: cast_nullable_to_non_nullable
              as DiscoverStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DiscoverStatusCopyWith<$Res> get discoverStatus {
    return $DiscoverStatusCopyWith<$Res>(_value.discoverStatus, (value) {
      return _then(_value.copyWith(discoverStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DiscoverStateImplCopyWith<$Res>
    implements $DiscoverStateCopyWith<$Res> {
  factory _$$DiscoverStateImplCopyWith(
          _$DiscoverStateImpl value, $Res Function(_$DiscoverStateImpl) then) =
      __$$DiscoverStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DiscoverStatus discoverStatus});

  @override
  $DiscoverStatusCopyWith<$Res> get discoverStatus;
}

/// @nodoc
class __$$DiscoverStateImplCopyWithImpl<$Res>
    extends _$DiscoverStateCopyWithImpl<$Res, _$DiscoverStateImpl>
    implements _$$DiscoverStateImplCopyWith<$Res> {
  __$$DiscoverStateImplCopyWithImpl(
      _$DiscoverStateImpl _value, $Res Function(_$DiscoverStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discoverStatus = null,
  }) {
    return _then(_$DiscoverStateImpl(
      discoverStatus: null == discoverStatus
          ? _value.discoverStatus
          : discoverStatus // ignore: cast_nullable_to_non_nullable
              as DiscoverStatus,
    ));
  }
}

/// @nodoc

class _$DiscoverStateImpl implements _DiscoverState {
  const _$DiscoverStateImpl(
      {this.discoverStatus = const DiscoverStatus.loading()});

  @override
  @JsonKey()
  final DiscoverStatus discoverStatus;

  @override
  String toString() {
    return 'DiscoverState(discoverStatus: $discoverStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverStateImpl &&
            (identical(other.discoverStatus, discoverStatus) ||
                other.discoverStatus == discoverStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discoverStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoverStateImplCopyWith<_$DiscoverStateImpl> get copyWith =>
      __$$DiscoverStateImplCopyWithImpl<_$DiscoverStateImpl>(this, _$identity);
}

abstract class _DiscoverState implements DiscoverState {
  const factory _DiscoverState({final DiscoverStatus discoverStatus}) =
      _$DiscoverStateImpl;

  @override
  DiscoverStatus get discoverStatus;
  @override
  @JsonKey(ignore: true)
  _$$DiscoverStateImplCopyWith<_$DiscoverStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
