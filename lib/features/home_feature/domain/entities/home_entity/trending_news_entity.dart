import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/core/domain/entities/meta_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_entity.dart';

part 'trending_news_entity.freezed.dart';

@freezed
class TrendingNewsEntity with _$TrendingNewsEntity{
  const factory TrendingNewsEntity({
    required List<NewsEntity> data,
    required MetaEntity meta,
  }) = _TrendingNewsEntity;
}