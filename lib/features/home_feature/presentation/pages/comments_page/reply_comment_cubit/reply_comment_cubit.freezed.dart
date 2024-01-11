// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_comment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReplyCommentState {
  String get username => throw _privateConstructorUsedError;
  int? get parentId => throw _privateConstructorUsedError;
  bool get isReplying => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReplyCommentStateCopyWith<ReplyCommentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyCommentStateCopyWith<$Res> {
  factory $ReplyCommentStateCopyWith(
          ReplyCommentState value, $Res Function(ReplyCommentState) then) =
      _$ReplyCommentStateCopyWithImpl<$Res, ReplyCommentState>;
  @useResult
  $Res call({String username, int? parentId, bool isReplying});
}

/// @nodoc
class _$ReplyCommentStateCopyWithImpl<$Res, $Val extends ReplyCommentState>
    implements $ReplyCommentStateCopyWith<$Res> {
  _$ReplyCommentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? parentId = freezed,
    Object? isReplying = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      isReplying: null == isReplying
          ? _value.isReplying
          : isReplying // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplyCommentStateImplCopyWith<$Res>
    implements $ReplyCommentStateCopyWith<$Res> {
  factory _$$ReplyCommentStateImplCopyWith(_$ReplyCommentStateImpl value,
          $Res Function(_$ReplyCommentStateImpl) then) =
      __$$ReplyCommentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, int? parentId, bool isReplying});
}

/// @nodoc
class __$$ReplyCommentStateImplCopyWithImpl<$Res>
    extends _$ReplyCommentStateCopyWithImpl<$Res, _$ReplyCommentStateImpl>
    implements _$$ReplyCommentStateImplCopyWith<$Res> {
  __$$ReplyCommentStateImplCopyWithImpl(_$ReplyCommentStateImpl _value,
      $Res Function(_$ReplyCommentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? parentId = freezed,
    Object? isReplying = null,
  }) {
    return _then(_$ReplyCommentStateImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      isReplying: null == isReplying
          ? _value.isReplying
          : isReplying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ReplyCommentStateImpl implements _ReplyCommentState {
  const _$ReplyCommentStateImpl(
      {this.username = '', this.parentId, this.isReplying = false});

  @override
  @JsonKey()
  final String username;
  @override
  final int? parentId;
  @override
  @JsonKey()
  final bool isReplying;

  @override
  String toString() {
    return 'ReplyCommentState(username: $username, parentId: $parentId, isReplying: $isReplying)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyCommentStateImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.isReplying, isReplying) ||
                other.isReplying == isReplying));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, parentId, isReplying);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyCommentStateImplCopyWith<_$ReplyCommentStateImpl> get copyWith =>
      __$$ReplyCommentStateImplCopyWithImpl<_$ReplyCommentStateImpl>(
          this, _$identity);
}

abstract class _ReplyCommentState implements ReplyCommentState {
  const factory _ReplyCommentState(
      {final String username,
      final int? parentId,
      final bool isReplying}) = _$ReplyCommentStateImpl;

  @override
  String get username;
  @override
  int? get parentId;
  @override
  bool get isReplying;
  @override
  @JsonKey(ignore: true)
  _$$ReplyCommentStateImplCopyWith<_$ReplyCommentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
