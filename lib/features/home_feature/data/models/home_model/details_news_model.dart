import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/home_feature/data/models/home_model/detail_news_tag_model.dart';
import 'package:news_line_app/features/home_feature/data/models/home_model/news_model.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/detail_news_tag_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_details_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_entity.dart';

import 'creator_model.dart';
import 'get_all_comments_model.dart';

part 'details_news_model.freezed.dart';
part 'details_news_model.g.dart';

@freezed
class DetailsNewsModel with _$DetailsNewsModel {
  const factory DetailsNewsModel({
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
    List<DetailNewsTagModel>? tagNews,
    required CreatorModel creator,
    required GetAllCommentsModel comments,
    required List<NewsModel>? userNews,
  }) = _DetailsNewsModel;

  const DetailsNewsModel._();

  factory DetailsNewsModel.fromJson(Map<String, Object?> json) =>
      _$DetailsNewsModelFromJson(json);

  NewsDetailsEntity toEntity() {    
    final userNewsEnt = <NewsEntity>[];
    if (userNews != null) {
      for (final item in userNews!) {
        userNewsEnt.add(item.toEntity());
      }
    }
    final tagNewsEnt = <DetailNewsTagEntity>[];
    if (tagNews != null) {
      for (final item in tagNews!) {
        tagNewsEnt.add(item.toEntity());
      }
    }
    return NewsDetailsEntity(
      id: id,
      title: title,
      coverImage: coverImage,
      readTime: readTime,
      viewsCount: viewsCount,
      description: description,
      isTrending: isTrending,
      creatorId: creatorId,
      createdAt: createdAt,
      commentsCount: commentsCount,
      tagNews: tagNewsEnt,
      creator: creator.toEntity(),
      comments: comments.toEntity(),
      userNews: userNewsEnt,
    );
  }
}
