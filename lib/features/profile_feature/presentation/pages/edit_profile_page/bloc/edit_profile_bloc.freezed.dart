// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditProfileEvent {
  int get profileId => throw _privateConstructorUsedError;
  EditProfileParams get body => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int profileId, EditProfileParams body)
        editProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int profileId, EditProfileParams body)? editProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int profileId, EditProfileParams body)? editProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditProfile value) editProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditProfile value)? editProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditProfileEventCopyWith<EditProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileEventCopyWith<$Res> {
  factory $EditProfileEventCopyWith(
          EditProfileEvent value, $Res Function(EditProfileEvent) then) =
      _$EditProfileEventCopyWithImpl<$Res, EditProfileEvent>;
  @useResult
  $Res call({int profileId, EditProfileParams body});
}

/// @nodoc
class _$EditProfileEventCopyWithImpl<$Res, $Val extends EditProfileEvent>
    implements $EditProfileEventCopyWith<$Res> {
  _$EditProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileId = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      profileId: null == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as int,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as EditProfileParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditProfileImplCopyWith<$Res>
    implements $EditProfileEventCopyWith<$Res> {
  factory _$$EditProfileImplCopyWith(
          _$EditProfileImpl value, $Res Function(_$EditProfileImpl) then) =
      __$$EditProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int profileId, EditProfileParams body});
}

/// @nodoc
class __$$EditProfileImplCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res, _$EditProfileImpl>
    implements _$$EditProfileImplCopyWith<$Res> {
  __$$EditProfileImplCopyWithImpl(
      _$EditProfileImpl _value, $Res Function(_$EditProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileId = null,
    Object? body = null,
  }) {
    return _then(_$EditProfileImpl(
      null == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as int,
      null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as EditProfileParams,
    ));
  }
}

/// @nodoc

class _$EditProfileImpl implements _EditProfile {
  const _$EditProfileImpl(this.profileId, this.body);

  @override
  final int profileId;
  @override
  final EditProfileParams body;

  @override
  String toString() {
    return 'EditProfileEvent.editProfile(profileId: $profileId, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileImpl &&
            (identical(other.profileId, profileId) ||
                other.profileId == profileId) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profileId, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileImplCopyWith<_$EditProfileImpl> get copyWith =>
      __$$EditProfileImplCopyWithImpl<_$EditProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int profileId, EditProfileParams body)
        editProfile,
  }) {
    return editProfile(profileId, body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int profileId, EditProfileParams body)? editProfile,
  }) {
    return editProfile?.call(profileId, body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int profileId, EditProfileParams body)? editProfile,
    required TResult orElse(),
  }) {
    if (editProfile != null) {
      return editProfile(profileId, body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditProfile value) editProfile,
  }) {
    return editProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditProfile value)? editProfile,
  }) {
    return editProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) {
    if (editProfile != null) {
      return editProfile(this);
    }
    return orElse();
  }
}

abstract class _EditProfile implements EditProfileEvent {
  const factory _EditProfile(
      final int profileId, final EditProfileParams body) = _$EditProfileImpl;

  @override
  int get profileId;
  @override
  EditProfileParams get body;
  @override
  @JsonKey(ignore: true)
  _$$EditProfileImplCopyWith<_$EditProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditProfileState {
  EditProfileStatus get editProfileStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditProfileStateCopyWith<EditProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res, EditProfileState>;
  @useResult
  $Res call({EditProfileStatus editProfileStatus});

  $EditProfileStatusCopyWith<$Res> get editProfileStatus;
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res, $Val extends EditProfileState>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editProfileStatus = null,
  }) {
    return _then(_value.copyWith(
      editProfileStatus: null == editProfileStatus
          ? _value.editProfileStatus
          : editProfileStatus // ignore: cast_nullable_to_non_nullable
              as EditProfileStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EditProfileStatusCopyWith<$Res> get editProfileStatus {
    return $EditProfileStatusCopyWith<$Res>(_value.editProfileStatus, (value) {
      return _then(_value.copyWith(editProfileStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditProfileStateImplCopyWith<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  factory _$$EditProfileStateImplCopyWith(_$EditProfileStateImpl value,
          $Res Function(_$EditProfileStateImpl) then) =
      __$$EditProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EditProfileStatus editProfileStatus});

  @override
  $EditProfileStatusCopyWith<$Res> get editProfileStatus;
}

/// @nodoc
class __$$EditProfileStateImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$EditProfileStateImpl>
    implements _$$EditProfileStateImplCopyWith<$Res> {
  __$$EditProfileStateImplCopyWithImpl(_$EditProfileStateImpl _value,
      $Res Function(_$EditProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editProfileStatus = null,
  }) {
    return _then(_$EditProfileStateImpl(
      editProfileStatus: null == editProfileStatus
          ? _value.editProfileStatus
          : editProfileStatus // ignore: cast_nullable_to_non_nullable
              as EditProfileStatus,
    ));
  }
}

/// @nodoc

class _$EditProfileStateImpl implements _EditProfileState {
  const _$EditProfileStateImpl(
      {this.editProfileStatus = const EditProfileStatus.initial()});

  @override
  @JsonKey()
  final EditProfileStatus editProfileStatus;

  @override
  String toString() {
    return 'EditProfileState(editProfileStatus: $editProfileStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileStateImpl &&
            (identical(other.editProfileStatus, editProfileStatus) ||
                other.editProfileStatus == editProfileStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, editProfileStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileStateImplCopyWith<_$EditProfileStateImpl> get copyWith =>
      __$$EditProfileStateImplCopyWithImpl<_$EditProfileStateImpl>(
          this, _$identity);
}

abstract class _EditProfileState implements EditProfileState {
  const factory _EditProfileState({final EditProfileStatus editProfileStatus}) =
      _$EditProfileStateImpl;

  @override
  EditProfileStatus get editProfileStatus;
  @override
  @JsonKey(ignore: true)
  _$$EditProfileStateImplCopyWith<_$EditProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
