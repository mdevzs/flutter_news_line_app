// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_details_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsDetailsStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(NewsDetailsEntity detailsEntity) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(NewsDetailsEntity detailsEntity)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(NewsDetailsEntity detailsEntity)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewsDetailsStatusLoading value) loading,
    required TResult Function(_NewsDetailsStatusSuccess value) success,
    required TResult Function(_NewsDetailsStatusError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewsDetailsStatusLoading value)? loading,
    TResult? Function(_NewsDetailsStatusSuccess value)? success,
    TResult? Function(_NewsDetailsStatusError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewsDetailsStatusLoading value)? loading,
    TResult Function(_NewsDetailsStatusSuccess value)? success,
    TResult Function(_NewsDetailsStatusError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDetailsStatusCopyWith<$Res> {
  factory $NewsDetailsStatusCopyWith(
          NewsDetailsStatus value, $Res Function(NewsDetailsStatus) then) =
      _$NewsDetailsStatusCopyWithImpl<$Res, NewsDetailsStatus>;
}

/// @nodoc
class _$NewsDetailsStatusCopyWithImpl<$Res, $Val extends NewsDetailsStatus>
    implements $NewsDetailsStatusCopyWith<$Res> {
  _$NewsDetailsStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NewsDetailsStatusLoadingImplCopyWith<$Res> {
  factory _$$NewsDetailsStatusLoadingImplCopyWith(
          _$NewsDetailsStatusLoadingImpl value,
          $Res Function(_$NewsDetailsStatusLoadingImpl) then) =
      __$$NewsDetailsStatusLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewsDetailsStatusLoadingImplCopyWithImpl<$Res>
    extends _$NewsDetailsStatusCopyWithImpl<$Res,
        _$NewsDetailsStatusLoadingImpl>
    implements _$$NewsDetailsStatusLoadingImplCopyWith<$Res> {
  __$$NewsDetailsStatusLoadingImplCopyWithImpl(
      _$NewsDetailsStatusLoadingImpl _value,
      $Res Function(_$NewsDetailsStatusLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewsDetailsStatusLoadingImpl implements _NewsDetailsStatusLoading {
  const _$NewsDetailsStatusLoadingImpl();

  @override
  String toString() {
    return 'NewsDetailsStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsDetailsStatusLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(NewsDetailsEntity detailsEntity) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(NewsDetailsEntity detailsEntity)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(NewsDetailsEntity detailsEntity)? success,
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
    required TResult Function(_NewsDetailsStatusLoading value) loading,
    required TResult Function(_NewsDetailsStatusSuccess value) success,
    required TResult Function(_NewsDetailsStatusError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewsDetailsStatusLoading value)? loading,
    TResult? Function(_NewsDetailsStatusSuccess value)? success,
    TResult? Function(_NewsDetailsStatusError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewsDetailsStatusLoading value)? loading,
    TResult Function(_NewsDetailsStatusSuccess value)? success,
    TResult Function(_NewsDetailsStatusError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _NewsDetailsStatusLoading implements NewsDetailsStatus {
  const factory _NewsDetailsStatusLoading() = _$NewsDetailsStatusLoadingImpl;
}

/// @nodoc
abstract class _$$NewsDetailsStatusSuccessImplCopyWith<$Res> {
  factory _$$NewsDetailsStatusSuccessImplCopyWith(
          _$NewsDetailsStatusSuccessImpl value,
          $Res Function(_$NewsDetailsStatusSuccessImpl) then) =
      __$$NewsDetailsStatusSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NewsDetailsEntity detailsEntity});

  $NewsDetailsEntityCopyWith<$Res> get detailsEntity;
}

/// @nodoc
class __$$NewsDetailsStatusSuccessImplCopyWithImpl<$Res>
    extends _$NewsDetailsStatusCopyWithImpl<$Res,
        _$NewsDetailsStatusSuccessImpl>
    implements _$$NewsDetailsStatusSuccessImplCopyWith<$Res> {
  __$$NewsDetailsStatusSuccessImplCopyWithImpl(
      _$NewsDetailsStatusSuccessImpl _value,
      $Res Function(_$NewsDetailsStatusSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailsEntity = null,
  }) {
    return _then(_$NewsDetailsStatusSuccessImpl(
      null == detailsEntity
          ? _value.detailsEntity
          : detailsEntity // ignore: cast_nullable_to_non_nullable
              as NewsDetailsEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsDetailsEntityCopyWith<$Res> get detailsEntity {
    return $NewsDetailsEntityCopyWith<$Res>(_value.detailsEntity, (value) {
      return _then(_value.copyWith(detailsEntity: value));
    });
  }
}

/// @nodoc

class _$NewsDetailsStatusSuccessImpl implements _NewsDetailsStatusSuccess {
  const _$NewsDetailsStatusSuccessImpl(this.detailsEntity);

  @override
  final NewsDetailsEntity detailsEntity;

  @override
  String toString() {
    return 'NewsDetailsStatus.success(detailsEntity: $detailsEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsDetailsStatusSuccessImpl &&
            (identical(other.detailsEntity, detailsEntity) ||
                other.detailsEntity == detailsEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detailsEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsDetailsStatusSuccessImplCopyWith<_$NewsDetailsStatusSuccessImpl>
      get copyWith => __$$NewsDetailsStatusSuccessImplCopyWithImpl<
          _$NewsDetailsStatusSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(NewsDetailsEntity detailsEntity) success,
    required TResult Function(String message) error,
  }) {
    return success(detailsEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(NewsDetailsEntity detailsEntity)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(detailsEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(NewsDetailsEntity detailsEntity)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(detailsEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewsDetailsStatusLoading value) loading,
    required TResult Function(_NewsDetailsStatusSuccess value) success,
    required TResult Function(_NewsDetailsStatusError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewsDetailsStatusLoading value)? loading,
    TResult? Function(_NewsDetailsStatusSuccess value)? success,
    TResult? Function(_NewsDetailsStatusError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewsDetailsStatusLoading value)? loading,
    TResult Function(_NewsDetailsStatusSuccess value)? success,
    TResult Function(_NewsDetailsStatusError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _NewsDetailsStatusSuccess implements NewsDetailsStatus {
  const factory _NewsDetailsStatusSuccess(
      final NewsDetailsEntity detailsEntity) = _$NewsDetailsStatusSuccessImpl;

  NewsDetailsEntity get detailsEntity;
  @JsonKey(ignore: true)
  _$$NewsDetailsStatusSuccessImplCopyWith<_$NewsDetailsStatusSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewsDetailsStatusErrorImplCopyWith<$Res> {
  factory _$$NewsDetailsStatusErrorImplCopyWith(
          _$NewsDetailsStatusErrorImpl value,
          $Res Function(_$NewsDetailsStatusErrorImpl) then) =
      __$$NewsDetailsStatusErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NewsDetailsStatusErrorImplCopyWithImpl<$Res>
    extends _$NewsDetailsStatusCopyWithImpl<$Res, _$NewsDetailsStatusErrorImpl>
    implements _$$NewsDetailsStatusErrorImplCopyWith<$Res> {
  __$$NewsDetailsStatusErrorImplCopyWithImpl(
      _$NewsDetailsStatusErrorImpl _value,
      $Res Function(_$NewsDetailsStatusErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NewsDetailsStatusErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewsDetailsStatusErrorImpl implements _NewsDetailsStatusError {
  const _$NewsDetailsStatusErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NewsDetailsStatus.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsDetailsStatusErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsDetailsStatusErrorImplCopyWith<_$NewsDetailsStatusErrorImpl>
      get copyWith => __$$NewsDetailsStatusErrorImplCopyWithImpl<
          _$NewsDetailsStatusErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(NewsDetailsEntity detailsEntity) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(NewsDetailsEntity detailsEntity)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(NewsDetailsEntity detailsEntity)? success,
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
    required TResult Function(_NewsDetailsStatusLoading value) loading,
    required TResult Function(_NewsDetailsStatusSuccess value) success,
    required TResult Function(_NewsDetailsStatusError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewsDetailsStatusLoading value)? loading,
    TResult? Function(_NewsDetailsStatusSuccess value)? success,
    TResult? Function(_NewsDetailsStatusError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewsDetailsStatusLoading value)? loading,
    TResult Function(_NewsDetailsStatusSuccess value)? success,
    TResult Function(_NewsDetailsStatusError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _NewsDetailsStatusError implements NewsDetailsStatus {
  const factory _NewsDetailsStatusError(final String message) =
      _$NewsDetailsStatusErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$NewsDetailsStatusErrorImplCopyWith<_$NewsDetailsStatusErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
