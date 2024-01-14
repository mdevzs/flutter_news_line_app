// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discover_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DiscoverStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(DiscoverEntity discoverEntity) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(DiscoverEntity discoverEntity)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DiscoverEntity discoverEntity)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DiscoverStatusLoading value) loading,
    required TResult Function(_DiscoverStatusSuccess value) success,
    required TResult Function(_DiscoverStatusError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DiscoverStatusLoading value)? loading,
    TResult? Function(_DiscoverStatusSuccess value)? success,
    TResult? Function(_DiscoverStatusError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DiscoverStatusLoading value)? loading,
    TResult Function(_DiscoverStatusSuccess value)? success,
    TResult Function(_DiscoverStatusError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverStatusCopyWith<$Res> {
  factory $DiscoverStatusCopyWith(
          DiscoverStatus value, $Res Function(DiscoverStatus) then) =
      _$DiscoverStatusCopyWithImpl<$Res, DiscoverStatus>;
}

/// @nodoc
class _$DiscoverStatusCopyWithImpl<$Res, $Val extends DiscoverStatus>
    implements $DiscoverStatusCopyWith<$Res> {
  _$DiscoverStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DiscoverStatusLoadingImplCopyWith<$Res> {
  factory _$$DiscoverStatusLoadingImplCopyWith(
          _$DiscoverStatusLoadingImpl value,
          $Res Function(_$DiscoverStatusLoadingImpl) then) =
      __$$DiscoverStatusLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DiscoverStatusLoadingImplCopyWithImpl<$Res>
    extends _$DiscoverStatusCopyWithImpl<$Res, _$DiscoverStatusLoadingImpl>
    implements _$$DiscoverStatusLoadingImplCopyWith<$Res> {
  __$$DiscoverStatusLoadingImplCopyWithImpl(_$DiscoverStatusLoadingImpl _value,
      $Res Function(_$DiscoverStatusLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DiscoverStatusLoadingImpl implements _DiscoverStatusLoading {
  const _$DiscoverStatusLoadingImpl();

  @override
  String toString() {
    return 'DiscoverStatus.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverStatusLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(DiscoverEntity discoverEntity) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(DiscoverEntity discoverEntity)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DiscoverEntity discoverEntity)? success,
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
    required TResult Function(_DiscoverStatusLoading value) loading,
    required TResult Function(_DiscoverStatusSuccess value) success,
    required TResult Function(_DiscoverStatusError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DiscoverStatusLoading value)? loading,
    TResult? Function(_DiscoverStatusSuccess value)? success,
    TResult? Function(_DiscoverStatusError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DiscoverStatusLoading value)? loading,
    TResult Function(_DiscoverStatusSuccess value)? success,
    TResult Function(_DiscoverStatusError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _DiscoverStatusLoading implements DiscoverStatus {
  const factory _DiscoverStatusLoading() = _$DiscoverStatusLoadingImpl;
}

/// @nodoc
abstract class _$$DiscoverStatusSuccessImplCopyWith<$Res> {
  factory _$$DiscoverStatusSuccessImplCopyWith(
          _$DiscoverStatusSuccessImpl value,
          $Res Function(_$DiscoverStatusSuccessImpl) then) =
      __$$DiscoverStatusSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DiscoverEntity discoverEntity});

  $DiscoverEntityCopyWith<$Res> get discoverEntity;
}

/// @nodoc
class __$$DiscoverStatusSuccessImplCopyWithImpl<$Res>
    extends _$DiscoverStatusCopyWithImpl<$Res, _$DiscoverStatusSuccessImpl>
    implements _$$DiscoverStatusSuccessImplCopyWith<$Res> {
  __$$DiscoverStatusSuccessImplCopyWithImpl(_$DiscoverStatusSuccessImpl _value,
      $Res Function(_$DiscoverStatusSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discoverEntity = null,
  }) {
    return _then(_$DiscoverStatusSuccessImpl(
      null == discoverEntity
          ? _value.discoverEntity
          : discoverEntity // ignore: cast_nullable_to_non_nullable
              as DiscoverEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DiscoverEntityCopyWith<$Res> get discoverEntity {
    return $DiscoverEntityCopyWith<$Res>(_value.discoverEntity, (value) {
      return _then(_value.copyWith(discoverEntity: value));
    });
  }
}

/// @nodoc

class _$DiscoverStatusSuccessImpl implements _DiscoverStatusSuccess {
  const _$DiscoverStatusSuccessImpl(this.discoverEntity);

  @override
  final DiscoverEntity discoverEntity;

  @override
  String toString() {
    return 'DiscoverStatus.success(discoverEntity: $discoverEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverStatusSuccessImpl &&
            (identical(other.discoverEntity, discoverEntity) ||
                other.discoverEntity == discoverEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discoverEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoverStatusSuccessImplCopyWith<_$DiscoverStatusSuccessImpl>
      get copyWith => __$$DiscoverStatusSuccessImplCopyWithImpl<
          _$DiscoverStatusSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(DiscoverEntity discoverEntity) success,
    required TResult Function(String message) error,
  }) {
    return success(discoverEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(DiscoverEntity discoverEntity)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(discoverEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DiscoverEntity discoverEntity)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(discoverEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DiscoverStatusLoading value) loading,
    required TResult Function(_DiscoverStatusSuccess value) success,
    required TResult Function(_DiscoverStatusError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DiscoverStatusLoading value)? loading,
    TResult? Function(_DiscoverStatusSuccess value)? success,
    TResult? Function(_DiscoverStatusError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DiscoverStatusLoading value)? loading,
    TResult Function(_DiscoverStatusSuccess value)? success,
    TResult Function(_DiscoverStatusError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _DiscoverStatusSuccess implements DiscoverStatus {
  const factory _DiscoverStatusSuccess(final DiscoverEntity discoverEntity) =
      _$DiscoverStatusSuccessImpl;

  DiscoverEntity get discoverEntity;
  @JsonKey(ignore: true)
  _$$DiscoverStatusSuccessImplCopyWith<_$DiscoverStatusSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DiscoverStatusErrorImplCopyWith<$Res> {
  factory _$$DiscoverStatusErrorImplCopyWith(_$DiscoverStatusErrorImpl value,
          $Res Function(_$DiscoverStatusErrorImpl) then) =
      __$$DiscoverStatusErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DiscoverStatusErrorImplCopyWithImpl<$Res>
    extends _$DiscoverStatusCopyWithImpl<$Res, _$DiscoverStatusErrorImpl>
    implements _$$DiscoverStatusErrorImplCopyWith<$Res> {
  __$$DiscoverStatusErrorImplCopyWithImpl(_$DiscoverStatusErrorImpl _value,
      $Res Function(_$DiscoverStatusErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DiscoverStatusErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DiscoverStatusErrorImpl implements _DiscoverStatusError {
  const _$DiscoverStatusErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DiscoverStatus.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverStatusErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoverStatusErrorImplCopyWith<_$DiscoverStatusErrorImpl> get copyWith =>
      __$$DiscoverStatusErrorImplCopyWithImpl<_$DiscoverStatusErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(DiscoverEntity discoverEntity) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(DiscoverEntity discoverEntity)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DiscoverEntity discoverEntity)? success,
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
    required TResult Function(_DiscoverStatusLoading value) loading,
    required TResult Function(_DiscoverStatusSuccess value) success,
    required TResult Function(_DiscoverStatusError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DiscoverStatusLoading value)? loading,
    TResult? Function(_DiscoverStatusSuccess value)? success,
    TResult? Function(_DiscoverStatusError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DiscoverStatusLoading value)? loading,
    TResult Function(_DiscoverStatusSuccess value)? success,
    TResult Function(_DiscoverStatusError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _DiscoverStatusError implements DiscoverStatus {
  const factory _DiscoverStatusError(final String message) =
      _$DiscoverStatusErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$DiscoverStatusErrorImplCopyWith<_$DiscoverStatusErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
