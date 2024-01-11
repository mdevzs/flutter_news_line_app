import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/creator_entity.dart';

part 'comments_entity.freezed.dart';

// @Freezed(
//   makeCollectionsUnmodifiable: false,
// )
@unfreezed
class CommentsEntity with _$CommentsEntity {
   factory CommentsEntity({
    required int id,
    required String comment,
    required int newsId,
    required int creatorId,
    int? parentId,
    required String createdAt,
    required CreatorEntity creator,
    required int likeCounts,
    required bool isLiked,
    @Default([]) List<CommentsEntity> replies,
  }) = _CommentsEntity;
}
