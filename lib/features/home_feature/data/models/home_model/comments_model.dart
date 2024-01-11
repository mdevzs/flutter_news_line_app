import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/home_feature/data/models/home_model/creator_model.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/comments_entity.dart';

part 'comments_model.freezed.dart';
part 'comments_model.g.dart';

@freezed
class CommentsModel with _$CommentsModel {
  const factory CommentsModel({
    required int id,
    required String comment,
    required int newsId,
    required int creatorId,
    int? parentId,
    required String createdAt,
    required CreatorModel creator,
    required int likeCounts,
    required bool isLiked,
    @Default([]) List<CommentsModel> replies,
  }) = _CommentsModel;

  const CommentsModel._();

  factory CommentsModel.fromJson(Map<String, Object?> json) =>
      _$CommentsModelFromJson(json);

  CommentsEntity toEntity() {
    final repliesEntity = <CommentsEntity>[];
    for (final reply in replies) {
      repliesEntity.add(reply.toEntity());
    }
    return CommentsEntity(
      id: id,
      comment: comment,
      newsId: newsId,
      creatorId: creatorId,
      createdAt: createdAt,
      parentId: parentId,
      creator: creator.toEntity(),
      likeCounts: likeCounts,
      isLiked: isLiked,
      replies: repliesEntity,
    );
  }
}
