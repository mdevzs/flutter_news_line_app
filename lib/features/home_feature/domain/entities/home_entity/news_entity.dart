import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/tag_news_entity.dart';
import 'package:objectbox/objectbox.dart';

import '../../../../bookmark_feature/domain/entities/bookmarks.dart';
import 'creator_entity.dart';

part 'news_entity.freezed.dart';

@freezed
class NewsEntity with _$NewsEntity {
  const NewsEntity._();
  @Entity(realClass: NewsEntity)
  const factory NewsEntity({
    @Id(assignable: true) required int id,
    required String title,
    String? coverImage,
    required String readTime,
    required String viewsCount,
    String? description,
    required bool isTrending,
    required int creatorId,
    required String createdAt,
    required String commentCounts,
    @Transient() List<TagNewsEntity>? tagNews,
    @Transient() CreatorEntity? creator,
    @Backlink()
    required ToMany<Bookmarks> bookmarks,
    required ToOne<CreatorEntity> creatorRelation,
  }) = _NewsEntity;
  CreatorEntity? get creatorTarget {
    return creatorRelation.target;
  }
}
