import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/auth_feature/data/models/user_model.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/user_entity.dart';
import 'package:news_line_app/features/discover_feature/domain/entities/discover_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_entity.dart';

import '../../../home_feature/data/models/home_model/news_model.dart';

part 'discover_model.freezed.dart';
part 'discover_model.g.dart';

@freezed
class DiscoverModel with _$DiscoverModel {
  const factory DiscoverModel({
    List<NewsModel>? topNews,
    List<UserModel>? popularPublishers,
    List<UserModel>? popularAuthors,
    List<NewsModel>? recommandedNews,
  }) = _DiscoverModel;

  const DiscoverModel._();

  factory DiscoverModel.fromJson(Map<String, dynamic> json) =>
      _$DiscoverModelFromJson(json);

  DiscoverEntity toEntity() {
    final topNewsEntity = <NewsEntity>[];
    if (topNews != null) {
      for (final news in topNews!) {
        topNewsEntity.add(news.toEntity());
      }
    }
    final popularPublisherEntity = <UserEntity>[];
    if (popularPublishers != null) {
      for (final publisher in popularPublishers!) {
        popularPublisherEntity.add(publisher.toEntity());
      }
    }
    final popularAhutorsEntity = <UserEntity>[];
    if (popularAuthors != null) {
      for (final authors in popularAuthors!) {
        popularAhutorsEntity.add(authors.toEntity());
      }
    }
    final recommandedNewsEntity = <NewsEntity>[];
    if (recommandedNews != null) {
      for (final news in recommandedNews!) {
        recommandedNewsEntity.add(news.toEntity());
      }
    }
    return DiscoverEntity(
      topNews: topNewsEntity,
      popularPublishers: popularPublisherEntity,
      popularAuthors: popularAhutorsEntity,
      recommandedNews: recommandedNewsEntity,
    );
  }
}
