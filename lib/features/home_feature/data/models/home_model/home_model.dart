import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/auth_feature/data/models/user_model.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/home_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/tag_entity.dart';

import 'news_model.dart';
import 'tag_model.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
class HomeModel with _$HomeModel {
  factory HomeModel({
    required UserModel user,
    List<NewsModel>? trendingNews,
    List<TagModel>? tags,
    List<NewsModel>? recentNews,
  }) = _HomeModel;

  const HomeModel._();

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);

  HomeEntity toEntity() {
    List<NewsEntity> trendingNewsEntity = [];
    List<TagEntity> tagsEntity = [];
    List<NewsEntity> recentNewsEntity = [];
    if (trendingNews != null) {
      for (final trending in trendingNews!) {
        trendingNewsEntity.add(trending.toEntity());
      }
    }
    if (tags != null) {
      for (final tag in tags!) {
        tagsEntity.add(tag.toEntity());
      }
    }
    if (recentNews != null) {
      for (final recent in recentNews!) {
        recentNewsEntity.add(recent.toEntity());
      }
    }
    return HomeEntity(
      user: user.toEntity(),
      trendingNews: trendingNewsEntity,
      recentNews: recentNewsEntity,
      tags: tagsEntity,
    );
  }
}
