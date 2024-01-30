import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/bookmark_feature/domain/entities/bookmarks.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/creator_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/tag_news_entity.dart';
import 'package:objectbox/objectbox.dart';

import 'creator_model.dart';
import 'tag_news_model.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
class NewsModel with _$NewsModel {
  factory NewsModel({
    required int id,
    required String title,
    String? coverImage,
    required String readTime,
    required String viewsCount,
    String? description,
    required bool isTrending,
    required int creatorId,
    required String createdAt,
    required int commentCounts,
    List<TagNewsModel>? tagNews,
    required CreatorModel creator,
  }) = _NewsModel;

  const NewsModel._();

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);

  NewsEntity toEntity() {
    List<TagNewsEntity> tagNewsEntity = [];
    if (tagNews != null) {
      for (final tag in tagNews!) {
        tagNewsEntity.add(TagNewsEntity(tagNews: tag.toEntity()));
      }
    }
    return NewsEntity(
      id: id,
      title: title,
      coverImage: coverImage,
      description: description,
      readTime: readTime,
      viewsCount: viewsCount,
      isTrending: isTrending,
      creatorId: creatorId,
      tagNews: tagNewsEntity,
      createdAt: createdAt,
      commentCounts: commentCounts.toString(),
      creator: CreatorEntity(
        id: creator.id,
        fullName: creator.fullName,
        profileImage: creator.profileImage,
        followersCount: creator.followersCount ?? -1,
        bio: creator.bio ?? '',
      ),
      bookmarks: ToMany<Bookmarks>(),
      creatorRelation: ToOne<CreatorEntity>()
    );
  }
}
