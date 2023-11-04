// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_tags_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetAllTagsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TagsEntity> tags) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TagsEntity> tags)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TagsEntity> tags)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AllTagsInitial value) initial,
    required TResult Function(_AllTagsLoading value) loading,
    required TResult Function(_AllTagsSuccess value) success,
    required TResult Function(_AllTagsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllTagsInitial value)? initial,
    TResult? Function(_AllTagsLoading value)? loading,
    TResult? Function(_AllTagsSuccess value)? success,
    TResult? Function(_AllTagsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllTagsInitial value)? initial,
    TResult Function(_AllTagsLoading value)? loading,
    TResult Function(_AllTagsSuccess value)? success,
    TResult Function(_AllTagsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllTagsStateCopyWith<$Res> {
  factory $GetAllTagsStateCopyWith(
          GetAllTagsState value, $Res Function(GetAllTagsState) then) =
      _$GetAllTagsStateCopyWithImpl<$Res, GetAllTagsState>;
}

/// @nodoc
class _$GetAllTagsStateCopyWithImpl<$Res, $Val extends GetAllTagsState>
    implements $GetAllTagsStateCopyWith<$Res> {
  _$GetAllTagsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AllTagsInitialImplCopyWith<$Res> {
  factory _$$AllTagsInitialImplCopyWith(_$AllTagsInitialImpl value,
          $Res Function(_$AllTagsInitialImpl) then) =
      __$$AllTagsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AllTagsInitialImplCopyWithImpl<$Res>
    extends _$GetAllTagsStateCopyWithImpl<$Res, _$AllTagsInitialImpl>
    implements _$$AllTagsInitialImplCopyWith<$Res> {
  __$$AllTagsInitialImplCopyWithImpl(
      _$AllTagsInitialImpl _value, $Res Function(_$AllTagsInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AllTagsInitialImpl implements _AllTagsInitial {
  const _$AllTagsInitialImpl();

  @override
  String toString() {
    return 'GetAllTagsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AllTagsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TagsEntity> tags) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TagsEntity> tags)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TagsEntity> tags)? success,
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
    required TResult Function(_AllTagsInitial value) initial,
    required TResult Function(_AllTagsLoading value) loading,
    required TResult Function(_AllTagsSuccess value) success,
    required TResult Function(_AllTagsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllTagsInitial value)? initial,
    TResult? Function(_AllTagsLoading value)? loading,
    TResult? Function(_AllTagsSuccess value)? success,
    TResult? Function(_AllTagsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllTagsInitial value)? initial,
    TResult Function(_AllTagsLoading value)? loading,
    TResult Function(_AllTagsSuccess value)? success,
    TResult Function(_AllTagsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AllTagsInitial implements GetAllTagsState {
  const factory _AllTagsInitial() = _$AllTagsInitialImpl;
}

/// @nodoc
abstract class _$$AllTagsLoadingImplCopyWith<$Res> {
  factory _$$AllTagsLoadingImplCopyWith(_$AllTagsLoadingImpl value,
          $Res Function(_$AllTagsLoadingImpl) then) =
      __$$AllTagsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AllTagsLoadingImplCopyWithImpl<$Res>
    extends _$GetAllTagsStateCopyWithImpl<$Res, _$AllTagsLoadingImpl>
    implements _$$AllTagsLoadingImplCopyWith<$Res> {
  __$$AllTagsLoadingImplCopyWithImpl(
      _$AllTagsLoadingImpl _value, $Res Function(_$AllTagsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AllTagsLoadingImpl implements _AllTagsLoading {
  const _$AllTagsLoadingImpl();

  @override
  String toString() {
    return 'GetAllTagsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AllTagsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TagsEntity> tags) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TagsEntity> tags)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TagsEntity> tags)? success,
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
    required TResult Function(_AllTagsInitial value) initial,
    required TResult Function(_AllTagsLoading value) loading,
    required TResult Function(_AllTagsSuccess value) success,
    required TResult Function(_AllTagsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllTagsInitial value)? initial,
    TResult? Function(_AllTagsLoading value)? loading,
    TResult? Function(_AllTagsSuccess value)? success,
    TResult? Function(_AllTagsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllTagsInitial value)? initial,
    TResult Function(_AllTagsLoading value)? loading,
    TResult Function(_AllTagsSuccess value)? success,
    TResult Function(_AllTagsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AllTagsLoading implements GetAllTagsState {
  const factory _AllTagsLoading() = _$AllTagsLoadingImpl;
}

/// @nodoc
abstract class _$$AllTagsSuccessImplCopyWith<$Res> {
  factory _$$AllTagsSuccessImplCopyWith(_$AllTagsSuccessImpl value,
          $Res Function(_$AllTagsSuccessImpl) then) =
      __$$AllTagsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TagsEntity> tags});
}

/// @nodoc
class __$$AllTagsSuccessImplCopyWithImpl<$Res>
    extends _$GetAllTagsStateCopyWithImpl<$Res, _$AllTagsSuccessImpl>
    implements _$$AllTagsSuccessImplCopyWith<$Res> {
  __$$AllTagsSuccessImplCopyWithImpl(
      _$AllTagsSuccessImpl _value, $Res Function(_$AllTagsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
  }) {
    return _then(_$AllTagsSuccessImpl(
      null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagsEntity>,
    ));
  }
}

/// @nodoc

class _$AllTagsSuccessImpl implements _AllTagsSuccess {
  const _$AllTagsSuccessImpl(final List<TagsEntity> tags) : _tags = tags;

  final List<TagsEntity> _tags;
  @override
  List<TagsEntity> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'GetAllTagsState.success(tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllTagsSuccessImpl &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllTagsSuccessImplCopyWith<_$AllTagsSuccessImpl> get copyWith =>
      __$$AllTagsSuccessImplCopyWithImpl<_$AllTagsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TagsEntity> tags) success,
    required TResult Function(String message) error,
  }) {
    return success(tags);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TagsEntity> tags)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(tags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TagsEntity> tags)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(tags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AllTagsInitial value) initial,
    required TResult Function(_AllTagsLoading value) loading,
    required TResult Function(_AllTagsSuccess value) success,
    required TResult Function(_AllTagsError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllTagsInitial value)? initial,
    TResult? Function(_AllTagsLoading value)? loading,
    TResult? Function(_AllTagsSuccess value)? success,
    TResult? Function(_AllTagsError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllTagsInitial value)? initial,
    TResult Function(_AllTagsLoading value)? loading,
    TResult Function(_AllTagsSuccess value)? success,
    TResult Function(_AllTagsError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _AllTagsSuccess implements GetAllTagsState {
  const factory _AllTagsSuccess(final List<TagsEntity> tags) =
      _$AllTagsSuccessImpl;

  List<TagsEntity> get tags;
  @JsonKey(ignore: true)
  _$$AllTagsSuccessImplCopyWith<_$AllTagsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AllTagsErrorImplCopyWith<$Res> {
  factory _$$AllTagsErrorImplCopyWith(
          _$AllTagsErrorImpl value, $Res Function(_$AllTagsErrorImpl) then) =
      __$$AllTagsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AllTagsErrorImplCopyWithImpl<$Res>
    extends _$GetAllTagsStateCopyWithImpl<$Res, _$AllTagsErrorImpl>
    implements _$$AllTagsErrorImplCopyWith<$Res> {
  __$$AllTagsErrorImplCopyWithImpl(
      _$AllTagsErrorImpl _value, $Res Function(_$AllTagsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AllTagsErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AllTagsErrorImpl implements _AllTagsError {
  const _$AllTagsErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'GetAllTagsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllTagsErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllTagsErrorImplCopyWith<_$AllTagsErrorImpl> get copyWith =>
      __$$AllTagsErrorImplCopyWithImpl<_$AllTagsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TagsEntity> tags) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TagsEntity> tags)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TagsEntity> tags)? success,
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
    required TResult Function(_AllTagsInitial value) initial,
    required TResult Function(_AllTagsLoading value) loading,
    required TResult Function(_AllTagsSuccess value) success,
    required TResult Function(_AllTagsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllTagsInitial value)? initial,
    TResult? Function(_AllTagsLoading value)? loading,
    TResult? Function(_AllTagsSuccess value)? success,
    TResult? Function(_AllTagsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllTagsInitial value)? initial,
    TResult Function(_AllTagsLoading value)? loading,
    TResult Function(_AllTagsSuccess value)? success,
    TResult Function(_AllTagsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AllTagsError implements GetAllTagsState {
  const factory _AllTagsError(final String message) = _$AllTagsErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$AllTagsErrorImplCopyWith<_$AllTagsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
