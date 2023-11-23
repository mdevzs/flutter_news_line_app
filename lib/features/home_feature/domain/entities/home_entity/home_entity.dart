import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/user_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/tag_entity.dart';

import 'news_entity.dart';

part 'home_entity.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class HomeEntity with _$HomeEntity {
  factory HomeEntity({
    required UserEntity user,
    List<NewsEntity>? trendingNews,
    List<TagEntity>? tags,
    List<NewsEntity>? recentNews,
  }) = _HomeEntity;
}
