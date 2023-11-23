import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/tag_news_entity.dart';

import 'creator_entity.dart';

part 'news_entity.freezed.dart';

@freezed
class NewsEntity with _$NewsEntity {
  factory NewsEntity({
    required int id,
    required String title,
    String? coverImage,
    required String readTime,
    required String viewsCount,
    String? description,
    required bool isTrending,
    required int creatorId,
    required String createdAt,
    required String commentCounts,
    List<TagNewsEntity>? tagNews,
    required CreatorEntity creator,
  }) = _NewsEntity;
}
