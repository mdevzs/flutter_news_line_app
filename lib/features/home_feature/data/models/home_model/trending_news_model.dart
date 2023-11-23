import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/trending_news_entity.dart';

import '../../../../../core/data/models/meta_model.dart';
import '../../../domain/entities/home_entity/news_entity.dart';
import 'news_model.dart';

part 'trending_news_model.freezed.dart';
part 'trending_news_model.g.dart';

@freezed
class TrendingNewsModel with _$TrendingNewsModel {
  const factory TrendingNewsModel({
    required List<NewsModel> data,
    required MetaModel meta,
  }) = _TrendingNewsModel;

  const TrendingNewsModel._();

  factory TrendingNewsModel.fromJson(Map<String, Object?> json) =>
      _$TrendingNewsModelFromJson(json);

  TrendingNewsEntity toEntity() {
    final dataEntity = <NewsEntity>[];
    for (var news in data) {
      dataEntity.add(news.toEntity());
    }
    return TrendingNewsEntity(
      data: dataEntity,
      meta: meta.toEntity(),
    );
  }
}
