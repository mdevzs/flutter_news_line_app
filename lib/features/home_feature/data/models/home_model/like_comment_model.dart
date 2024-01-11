import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/like_comment_entity.dart';

part 'like_comment_model.freezed.dart';
part 'like_comment_model.g.dart';

@freezed
class LikeCommentModel with _$LikeCommentModel {
  const factory LikeCommentModel({
    required int commentId,
    required int userId,
    required int likeCounts,
  }) = _LikeCommentModel;

  const LikeCommentModel._();

  factory LikeCommentModel.fromJson(Map<String, Object?> json) =>
      _$LikeCommentModelFromJson(json);

  LikeCommentEntity toEntity() {
    return LikeCommentEntity(
      commentId: commentId,
      userId: userId,
      likeCounts: likeCounts,
    );
  }
}
