// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ProfileEntity profileEntity) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ProfileEntity profileEntity)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ProfileEntity profileEntity)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileStatusLoading value) loading,
    required TResult Function(ProfileStatusSuccess value) success,
    required TResult Function(_ProfileStatusError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileStatusLoading value)? loading,
    TResult? Function(ProfileStatusSuccess value)? success,
    TResult? Function(_ProfileStatusError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileStatusLoading value)? loading,
    TResult Function(ProfileStatusSuccess value)? success,
    TResult Function(_ProfileStatusError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStatusCopyWith<$Res> {
  factory $ProfileStatusCopyWith(
          ProfileStatus value, $Res Function(ProfileStatus) then) =
      _$ProfileStatusCopyWithImpl<$Res, ProfileStatus>;
}

/// @nodoc
class _$ProfileStatusCopyWithImpl<$Res, $Val extends ProfileStatus>
    implements $ProfileStatusCopyWith<$Res> {
  _$ProfileStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProfileStatusLoadingImplCopyWith<$Res> {
  factory _$$ProfileStatusLoadingImplCopyWith(_$ProfileStatusLoadingImpl value,
          $Res Function(_$ProfileStatusLoadingImpl) then) =
      __$$ProfileStatusLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileStatusLoadingImplCopyWithImpl<$Res>
    extends _$ProfileStatusCopyWithImpl<$Res, _$ProfileStatusLoadingImpl>
    implements _$$ProfileStatusLoadingImplCopyWith<$Res> {
  __$$ProfileStatusLoadingImplCopyWithImpl(_$ProfileStatusLoadingImpl _value,
      $Res Function(_$ProfileStatusLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileStatusLoadingImpl implements _ProfileStatusLoading {
  const _$ProfileStatusLoadingImpl();

  @override
  String toString() {
    return 'ProfileStatus.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStatusLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ProfileEntity profileEntity) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ProfileEntity profileEntity)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ProfileEntity profileEntity)? success,
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
    required TResult Function(_ProfileStatusLoading value) loading,
    required TResult Function(ProfileStatusSuccess value) success,
    required TResult Function(_ProfileStatusError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileStatusLoading value)? loading,
    TResult? Function(ProfileStatusSuccess value)? success,
    TResult? Function(_ProfileStatusError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileStatusLoading value)? loading,
    TResult Function(ProfileStatusSuccess value)? success,
    TResult Function(_ProfileStatusError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ProfileStatusLoading implements ProfileStatus {
  const factory _ProfileStatusLoading() = _$ProfileStatusLoadingImpl;
}

/// @nodoc
abstract class _$$ProfileStatusSuccessImplCopyWith<$Res> {
  factory _$$ProfileStatusSuccessImplCopyWith(_$ProfileStatusSuccessImpl value,
          $Res Function(_$ProfileStatusSuccessImpl) then) =
      __$$ProfileStatusSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileEntity profileEntity});

  $ProfileEntityCopyWith<$Res> get profileEntity;
}

/// @nodoc
class __$$ProfileStatusSuccessImplCopyWithImpl<$Res>
    extends _$ProfileStatusCopyWithImpl<$Res, _$ProfileStatusSuccessImpl>
    implements _$$ProfileStatusSuccessImplCopyWith<$Res> {
  __$$ProfileStatusSuccessImplCopyWithImpl(_$ProfileStatusSuccessImpl _value,
      $Res Function(_$ProfileStatusSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileEntity = null,
  }) {
    return _then(_$ProfileStatusSuccessImpl(
      null == profileEntity
          ? _value.profileEntity
          : profileEntity // ignore: cast_nullable_to_non_nullable
              as ProfileEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileEntityCopyWith<$Res> get profileEntity {
    return $ProfileEntityCopyWith<$Res>(_value.profileEntity, (value) {
      return _then(_value.copyWith(profileEntity: value));
    });
  }
}

/// @nodoc

class _$ProfileStatusSuccessImpl implements ProfileStatusSuccess {
  const _$ProfileStatusSuccessImpl(this.profileEntity);

  @override
  final ProfileEntity profileEntity;

  @override
  String toString() {
    return 'ProfileStatus.success(profileEntity: $profileEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStatusSuccessImpl &&
            (identical(other.profileEntity, profileEntity) ||
                other.profileEntity == profileEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profileEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStatusSuccessImplCopyWith<_$ProfileStatusSuccessImpl>
      get copyWith =>
          __$$ProfileStatusSuccessImplCopyWithImpl<_$ProfileStatusSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ProfileEntity profileEntity) success,
    required TResult Function(String message) error,
  }) {
    return success(profileEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ProfileEntity profileEntity)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(profileEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ProfileEntity profileEntity)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(profileEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileStatusLoading value) loading,
    required TResult Function(ProfileStatusSuccess value) success,
    required TResult Function(_ProfileStatusError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileStatusLoading value)? loading,
    TResult? Function(ProfileStatusSuccess value)? success,
    TResult? Function(_ProfileStatusError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileStatusLoading value)? loading,
    TResult Function(ProfileStatusSuccess value)? success,
    TResult Function(_ProfileStatusError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ProfileStatusSuccess implements ProfileStatus {
  const factory ProfileStatusSuccess(final ProfileEntity profileEntity) =
      _$ProfileStatusSuccessImpl;

  ProfileEntity get profileEntity;
  @JsonKey(ignore: true)
  _$$ProfileStatusSuccessImplCopyWith<_$ProfileStatusSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileStatusErrorImplCopyWith<$Res> {
  factory _$$ProfileStatusErrorImplCopyWith(_$ProfileStatusErrorImpl value,
          $Res Function(_$ProfileStatusErrorImpl) then) =
      __$$ProfileStatusErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ProfileStatusErrorImplCopyWithImpl<$Res>
    extends _$ProfileStatusCopyWithImpl<$Res, _$ProfileStatusErrorImpl>
    implements _$$ProfileStatusErrorImplCopyWith<$Res> {
  __$$ProfileStatusErrorImplCopyWithImpl(_$ProfileStatusErrorImpl _value,
      $Res Function(_$ProfileStatusErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ProfileStatusErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileStatusErrorImpl implements _ProfileStatusError {
  const _$ProfileStatusErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProfileStatus.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStatusErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStatusErrorImplCopyWith<_$ProfileStatusErrorImpl> get copyWith =>
      __$$ProfileStatusErrorImplCopyWithImpl<_$ProfileStatusErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ProfileEntity profileEntity) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ProfileEntity profileEntity)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ProfileEntity profileEntity)? success,
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
    required TResult Function(_ProfileStatusLoading value) loading,
    required TResult Function(ProfileStatusSuccess value) success,
    required TResult Function(_ProfileStatusError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileStatusLoading value)? loading,
    TResult? Function(ProfileStatusSuccess value)? success,
    TResult? Function(_ProfileStatusError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileStatusLoading value)? loading,
    TResult Function(ProfileStatusSuccess value)? success,
    TResult Function(_ProfileStatusError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ProfileStatusError implements ProfileStatus {
  const factory _ProfileStatusError(final String message) =
      _$ProfileStatusErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ProfileStatusErrorImplCopyWith<_$ProfileStatusErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
