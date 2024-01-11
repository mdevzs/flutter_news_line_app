// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_comment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LikeCommentEntity {
  int get commentId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get likeCounts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LikeCommentEntityCopyWith<LikeCommentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeCommentEntityCopyWith<$Res> {
  factory $LikeCommentEntityCopyWith(
          LikeCommentEntity value, $Res Function(LikeCommentEntity) then) =
      _$LikeCommentEntityCopyWithImpl<$Res, LikeCommentEntity>;
  @useResult
  $Res call({int commentId, int userId, int likeCounts});
}

/// @nodoc
class _$LikeCommentEntityCopyWithImpl<$Res, $Val extends LikeCommentEntity>
    implements $LikeCommentEntityCopyWith<$Res> {
  _$LikeCommentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? userId = null,
    Object? likeCounts = null,
  }) {
    return _then(_value.copyWith(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      likeCounts: null == likeCounts
          ? _value.likeCounts
          : likeCounts // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LikeCommentEntityImplCopyWith<$Res>
    implements $LikeCommentEntityCopyWith<$Res> {
  factory _$$LikeCommentEntityImplCopyWith(_$LikeCommentEntityImpl value,
          $Res Function(_$LikeCommentEntityImpl) then) =
      __$$LikeCommentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int commentId, int userId, int likeCounts});
}

/// @nodoc
class __$$LikeCommentEntityImplCopyWithImpl<$Res>
    extends _$LikeCommentEntityCopyWithImpl<$Res, _$LikeCommentEntityImpl>
    implements _$$LikeCommentEntityImplCopyWith<$Res> {
  __$$LikeCommentEntityImplCopyWithImpl(_$LikeCommentEntityImpl _value,
      $Res Function(_$LikeCommentEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? userId = null,
    Object? likeCounts = null,
  }) {
    return _then(_$LikeCommentEntityImpl(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      likeCounts: null == likeCounts
          ? _value.likeCounts
          : likeCounts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LikeCommentEntityImpl implements _LikeCommentEntity {
  const _$LikeCommentEntityImpl(
      {required this.commentId,
      required this.userId,
      required this.likeCounts});

  @override
  final int commentId;
  @override
  final int userId;
  @override
  final int likeCounts;

  @override
  String toString() {
    return 'LikeCommentEntity(commentId: $commentId, userId: $userId, likeCounts: $likeCounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeCommentEntityImpl &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.likeCounts, likeCounts) ||
                other.likeCounts == likeCounts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commentId, userId, likeCounts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeCommentEntityImplCopyWith<_$LikeCommentEntityImpl> get copyWith =>
      __$$LikeCommentEntityImplCopyWithImpl<_$LikeCommentEntityImpl>(
          this, _$identity);
}

abstract class _LikeCommentEntity implements LikeCommentEntity {
  const factory _LikeCommentEntity(
      {required final int commentId,
      required final int userId,
      required final int likeCounts}) = _$LikeCommentEntityImpl;

  @override
  int get commentId;
  @override
  int get userId;
  @override
  int get likeCounts;
  @override
  @JsonKey(ignore: true)
  _$$LikeCommentEntityImplCopyWith<_$LikeCommentEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
