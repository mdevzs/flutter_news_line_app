import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/core/domain/entities/meta_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_entity.dart';

part 'recent_news_entity.freezed.dart';

@freezed
class RecentNewsEntity with _$RecentNewsEntity{
  const factory RecentNewsEntity({
    required List<NewsEntity> data,
    required MetaEntity meta,
  }) = _RecentNewsEntity;
}