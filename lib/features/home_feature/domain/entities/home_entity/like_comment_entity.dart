import 'package:freezed_annotation/freezed_annotation.dart';

part 'like_comment_entity.freezed.dart';

@freezed
class LikeCommentEntity with _$LikeCommentEntity {
  const factory LikeCommentEntity({
    required int commentId,
    required int userId,
    required int likeCounts,
  }) = _LikeCommentEntity;
}