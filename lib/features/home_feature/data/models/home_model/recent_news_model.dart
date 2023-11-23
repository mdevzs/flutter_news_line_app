import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/core/data/models/meta_model.dart';
import 'package:news_line_app/features/home_feature/data/models/home_model/news_model.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/recent_news_entity.dart';

part 'recent_news_model.freezed.dart';
part 'recent_news_model.g.dart';

@freezed
class RecentNewsModel with _$RecentNewsModel {
  const factory RecentNewsModel({
    required List<NewsModel> data,
    required MetaModel meta,
  }) = _RecentNewsModel;

  const RecentNewsModel._();

 factory RecentNewsModel.fromJson(Map<String, Object?> json) =>
      _$RecentNewsModelFromJson(json);

  RecentNewsEntity toEntity() {
    final dataEntity = <NewsEntity>[];
    for (var news in data) {
      dataEntity.add(news.toEntity());
    }
    return RecentNewsEntity(
      data: dataEntity,
      meta: meta.toEntity(),
    );
  }
}
