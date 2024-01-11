// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LikeCommentModel _$LikeCommentModelFromJson(Map<String, dynamic> json) {
  return _LikeCommentModel.fromJson(json);
}

/// @nodoc
mixin _$LikeCommentModel {
  int get commentId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get likeCounts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikeCommentModelCopyWith<LikeCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeCommentModelCopyWith<$Res> {
  factory $LikeCommentModelCopyWith(
          LikeCommentModel value, $Res Function(LikeCommentModel) then) =
      _$LikeCommentModelCopyWithImpl<$Res, LikeCommentModel>;
  @useResult
  $Res call({int commentId, int userId, int likeCounts});
}

/// @nodoc
class _$LikeCommentModelCopyWithImpl<$Res, $Val extends LikeCommentModel>
    implements $LikeCommentModelCopyWith<$Res> {
  _$LikeCommentModelCopyWithImpl(this._value, this._then);

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
abstract class _$$LikeCommentModelImplCopyWith<$Res>
    implements $LikeCommentModelCopyWith<$Res> {
  factory _$$LikeCommentModelImplCopyWith(_$LikeCommentModelImpl value,
          $Res Function(_$LikeCommentModelImpl) then) =
      __$$LikeCommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int commentId, int userId, int likeCounts});
}

/// @nodoc
class __$$LikeCommentModelImplCopyWithImpl<$Res>
    extends _$LikeCommentModelCopyWithImpl<$Res, _$LikeCommentModelImpl>
    implements _$$LikeCommentModelImplCopyWith<$Res> {
  __$$LikeCommentModelImplCopyWithImpl(_$LikeCommentModelImpl _value,
      $Res Function(_$LikeCommentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? userId = null,
    Object? likeCounts = null,
  }) {
    return _then(_$LikeCommentModelImpl(
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
@JsonSerializable()
class _$LikeCommentModelImpl extends _LikeCommentModel {
  const _$LikeCommentModelImpl(
      {required this.commentId, required this.userId, required this.likeCounts})
      : super._();

  factory _$LikeCommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LikeCommentModelImplFromJson(json);

  @override
  final int commentId;
  @override
  final int userId;
  @override
  final int likeCounts;

  @override
  String toString() {
    return 'LikeCommentModel(commentId: $commentId, userId: $userId, likeCounts: $likeCounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeCommentModelImpl &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.likeCounts, likeCounts) ||
                other.likeCounts == likeCounts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, commentId, userId, likeCounts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeCommentModelImplCopyWith<_$LikeCommentModelImpl> get copyWith =>
      __$$LikeCommentModelImplCopyWithImpl<_$LikeCommentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikeCommentModelImplToJson(
      this,
    );
  }
}

abstract class _LikeCommentModel extends LikeCommentModel {
  const factory _LikeCommentModel(
      {required final int commentId,
      required final int userId,
      required final int likeCounts}) = _$LikeCommentModelImpl;
  const _LikeCommentModel._() : super._();

  factory _LikeCommentModel.fromJson(Map<String, dynamic> json) =
      _$LikeCommentModelImpl.fromJson;

  @override
  int get commentId;
  @override
  int get userId;
  @override
  int get likeCounts;
  @override
  @JsonKey(ignore: true)
  _$$LikeCommentModelImplCopyWith<_$LikeCommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
