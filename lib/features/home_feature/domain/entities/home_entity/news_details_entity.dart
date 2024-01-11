import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/creator_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/detail_news_tag_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_entity.dart';

import 'get_all_comments_entity.dart';

part 'news_details_entity.freezed.dart';

@freezed
class NewsDetailsEntity with _$NewsDetailsEntity {
  const factory NewsDetailsEntity({
    required int id,
    required String title,
    String? coverImage,
    required String readTime,
    required String viewsCount,
    String? description,
    required bool isTrending,
    required int creatorId,
    required String createdAt,
    required int commentsCount,
    List<DetailNewsTagEntity>? tagNews,
    required CreatorEntity creator,
    required GetAllCommentsEntity comments,
    required List<NewsEntity> userNews,
  }) = _NewsDetailsEntity;
}
