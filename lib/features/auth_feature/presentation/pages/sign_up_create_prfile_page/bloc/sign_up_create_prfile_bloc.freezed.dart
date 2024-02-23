// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_create_prfile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpCreatePrfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File imageFile) pickFile,
    required TResult Function(SignUpParams signUpParams) createProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File imageFile)? pickFile,
    TResult? Function(SignUpParams signUpParams)? createProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File imageFile)? pickFile,
    TResult Function(SignUpParams signUpParams)? createProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickeFile value) pickFile,
    required TResult Function(_CreateProfile value) createProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickeFile value)? pickFile,
    TResult? Function(_CreateProfile value)? createProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickeFile value)? pickFile,
    TResult Function(_CreateProfile value)? createProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpCreatePrfileEventCopyWith<$Res> {
  factory $SignUpCreatePrfileEventCopyWith(SignUpCreatePrfileEvent value,
          $Res Function(SignUpCreatePrfileEvent) then) =
      _$SignUpCreatePrfileEventCopyWithImpl<$Res, SignUpCreatePrfileEvent>;
}

/// @nodoc
class _$SignUpCreatePrfileEventCopyWithImpl<$Res,
        $Val extends SignUpCreatePrfileEvent>
    implements $SignUpCreatePrfileEventCopyWith<$Res> {
  _$SignUpCreatePrfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PickeFileImplCopyWith<$Res> {
  factory _$$PickeFileImplCopyWith(
          _$PickeFileImpl value, $Res Function(_$PickeFileImpl) then) =
      __$$PickeFileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File imageFile});
}

/// @nodoc
class __$$PickeFileImplCopyWithImpl<$Res>
    extends _$SignUpCreatePrfileEventCopyWithImpl<$Res, _$PickeFileImpl>
    implements _$$PickeFileImplCopyWith<$Res> {
  __$$PickeFileImplCopyWithImpl(
      _$PickeFileImpl _value, $Res Function(_$PickeFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageFile = null,
  }) {
    return _then(_$PickeFileImpl(
      null == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$PickeFileImpl implements _PickeFile {
  const _$PickeFileImpl(this.imageFile);

  @override
  final File imageFile;

  @override
  String toString() {
    return 'SignUpCreatePrfileEvent.pickFile(imageFile: $imageFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickeFileImpl &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickeFileImplCopyWith<_$PickeFileImpl> get copyWith =>
      __$$PickeFileImplCopyWithImpl<_$PickeFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File imageFile) pickFile,
    required TResult Function(SignUpParams signUpParams) createProfile,
  }) {
    return pickFile(imageFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File imageFile)? pickFile,
    TResult? Function(SignUpParams signUpParams)? createProfile,
  }) {
    return pickFile?.call(imageFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File imageFile)? pickFile,
    TResult Function(SignUpParams signUpParams)? createProfile,
    required TResult orElse(),
  }) {
    if (pickFile != null) {
      return pickFile(imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickeFile value) pickFile,
    required TResult Function(_CreateProfile value) createProfile,
  }) {
    return pickFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickeFile value)? pickFile,
    TResult? Function(_CreateProfile value)? createProfile,
  }) {
    return pickFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickeFile value)? pickFile,
    TResult Function(_CreateProfile value)? createProfile,
    required TResult orElse(),
  }) {
    if (pickFile != null) {
      return pickFile(this);
    }
    return orElse();
  }
}

abstract class _PickeFile implements SignUpCreatePrfileEvent {
  const factory _PickeFile(final File imageFile) = _$PickeFileImpl;

  File get imageFile;
  @JsonKey(ignore: true)
  _$$PickeFileImplCopyWith<_$PickeFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateProfileImplCopyWith<$Res> {
  factory _$$CreateProfileImplCopyWith(
          _$CreateProfileImpl value, $Res Function(_$CreateProfileImpl) then) =
      __$$CreateProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignUpParams signUpParams});
}

/// @nodoc
class __$$CreateProfileImplCopyWithImpl<$Res>
    extends _$SignUpCreatePrfileEventCopyWithImpl<$Res, _$CreateProfileImpl>
    implements _$$CreateProfileImplCopyWith<$Res> {
  __$$CreateProfileImplCopyWithImpl(
      _$CreateProfileImpl _value, $Res Function(_$CreateProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUpParams = null,
  }) {
    return _then(_$CreateProfileImpl(
      null == signUpParams
          ? _value.signUpParams
          : signUpParams // ignore: cast_nullable_to_non_nullable
              as SignUpParams,
    ));
  }
}

/// @nodoc

class _$CreateProfileImpl implements _CreateProfile {
  const _$CreateProfileImpl(this.signUpParams);

  @override
  final SignUpParams signUpParams;

  @override
  String toString() {
    return 'SignUpCreatePrfileEvent.createProfile(signUpParams: $signUpParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProfileImpl &&
            (identical(other.signUpParams, signUpParams) ||
                other.signUpParams == signUpParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signUpParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProfileImplCopyWith<_$CreateProfileImpl> get copyWith =>
      __$$CreateProfileImplCopyWithImpl<_$CreateProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File imageFile) pickFile,
    required TResult Function(SignUpParams signUpParams) createProfile,
  }) {
    return createProfile(signUpParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File imageFile)? pickFile,
    TResult? Function(SignUpParams signUpParams)? createProfile,
  }) {
    return createProfile?.call(signUpParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File imageFile)? pickFile,
    TResult Function(SignUpParams signUpParams)? createProfile,
    required TResult orElse(),
  }) {
    if (createProfile != null) {
      return createProfile(signUpParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickeFile value) pickFile,
    required TResult Function(_CreateProfile value) createProfile,
  }) {
    return createProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickeFile value)? pickFile,
    TResult? Function(_CreateProfile value)? createProfile,
  }) {
    return createProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickeFile value)? pickFile,
    TResult Function(_CreateProfile value)? createProfile,
    required TResult orElse(),
  }) {
    if (createProfile != null) {
      return createProfile(this);
    }
    return orElse();
  }
}

abstract class _CreateProfile implements SignUpCreatePrfileEvent {
  const factory _CreateProfile(final SignUpParams signUpParams) =
      _$CreateProfileImpl;

  SignUpParams get signUpParams;
  @JsonKey(ignore: true)
  _$$CreateProfileImplCopyWith<_$CreateProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpCreatePrfileState {
  File? get imageFile => throw _privateConstructorUsedError;
  bool get signUpIsLoading => throw _privateConstructorUsedError;
  CreateProfileState? get createProfileState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpCreatePrfileStateCopyWith<SignUpCreatePrfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpCreatePrfileStateCopyWith<$Res> {
  factory $SignUpCreatePrfileStateCopyWith(SignUpCreatePrfileState value,
          $Res Function(SignUpCreatePrfileState) then) =
      _$SignUpCreatePrfileStateCopyWithImpl<$Res, SignUpCreatePrfileState>;
  @useResult
  $Res call(
      {File? imageFile,
      bool signUpIsLoading,
      CreateProfileState? createProfileState});

  $CreateProfileStateCopyWith<$Res>? get createProfileState;
}

/// @nodoc
class _$SignUpCreatePrfileStateCopyWithImpl<$Res,
        $Val extends SignUpCreatePrfileState>
    implements $SignUpCreatePrfileStateCopyWith<$Res> {
  _$SignUpCreatePrfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageFile = freezed,
    Object? signUpIsLoading = null,
    Object? createProfileState = freezed,
  }) {
    return _then(_value.copyWith(
      imageFile: freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
      signUpIsLoading: null == signUpIsLoading
          ? _value.signUpIsLoading
          : signUpIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      createProfileState: freezed == createProfileState
          ? _value.createProfileState
          : createProfileState // ignore: cast_nullable_to_non_nullable
              as CreateProfileState?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateProfileStateCopyWith<$Res>? get createProfileState {
    if (_value.createProfileState == null) {
      return null;
    }

    return $CreateProfileStateCopyWith<$Res>(_value.createProfileState!,
        (value) {
      return _then(_value.copyWith(createProfileState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignUpCreatePrfileStateImplCopyWith<$Res>
    implements $SignUpCreatePrfileStateCopyWith<$Res> {
  factory _$$SignUpCreatePrfileStateImplCopyWith(
          _$SignUpCreatePrfileStateImpl value,
          $Res Function(_$SignUpCreatePrfileStateImpl) then) =
      __$$SignUpCreatePrfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {File? imageFile,
      bool signUpIsLoading,
      CreateProfileState? createProfileState});

  @override
  $CreateProfileStateCopyWith<$Res>? get createProfileState;
}

/// @nodoc
class __$$SignUpCreatePrfileStateImplCopyWithImpl<$Res>
    extends _$SignUpCreatePrfileStateCopyWithImpl<$Res,
        _$SignUpCreatePrfileStateImpl>
    implements _$$SignUpCreatePrfileStateImplCopyWith<$Res> {
  __$$SignUpCreatePrfileStateImplCopyWithImpl(
      _$SignUpCreatePrfileStateImpl _value,
      $Res Function(_$SignUpCreatePrfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageFile = freezed,
    Object? signUpIsLoading = null,
    Object? createProfileState = freezed,
  }) {
    return _then(_$SignUpCreatePrfileStateImpl(
      imageFile: freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
      signUpIsLoading: null == signUpIsLoading
          ? _value.signUpIsLoading
          : signUpIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      createProfileState: freezed == createProfileState
          ? _value.createProfileState
          : createProfileState // ignore: cast_nullable_to_non_nullable
              as CreateProfileState?,
    ));
  }
}

/// @nodoc

class _$SignUpCreatePrfileStateImpl implements _SignUpCreatePrfileState {
  const _$SignUpCreatePrfileStateImpl(
      {this.imageFile, this.signUpIsLoading = false, this.createProfileState});

  @override
  final File? imageFile;
  @override
  @JsonKey()
  final bool signUpIsLoading;
  @override
  final CreateProfileState? createProfileState;

  @override
  String toString() {
    return 'SignUpCreatePrfileState(imageFile: $imageFile, signUpIsLoading: $signUpIsLoading, createProfileState: $createProfileState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpCreatePrfileStateImpl &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile) &&
            (identical(other.signUpIsLoading, signUpIsLoading) ||
                other.signUpIsLoading == signUpIsLoading) &&
            (identical(other.createProfileState, createProfileState) ||
                other.createProfileState == createProfileState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, imageFile, signUpIsLoading, createProfileState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpCreatePrfileStateImplCopyWith<_$SignUpCreatePrfileStateImpl>
      get copyWith => __$$SignUpCreatePrfileStateImplCopyWithImpl<
          _$SignUpCreatePrfileStateImpl>(this, _$identity);
}

abstract class _SignUpCreatePrfileState implements SignUpCreatePrfileState {
  const factory _SignUpCreatePrfileState(
          {final File? imageFile,
          final bool signUpIsLoading,
          final CreateProfileState? createProfileState}) =
      _$SignUpCreatePrfileStateImpl;

  @override
  File? get imageFile;
  @override
  bool get signUpIsLoading;
  @override
  CreateProfileState? get createProfileState;
  @override
  @JsonKey(ignore: true)
  _$$SignUpCreatePrfileStateImplCopyWith<_$SignUpCreatePrfileStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
