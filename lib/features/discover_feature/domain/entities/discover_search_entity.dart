import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/user_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/tag_entity.dart';

part 'discover_search_entity.freezed.dart';

@freezed
class DiscoverSearchEntity with _$DiscoverSearchEntity {
  const factory DiscoverSearchEntity({
    required List<NewsEntity> news,
    required List<UserEntity> accounts,
    required List<TagEntity> tags,
  }) = _DiscoverSearchEntity;
}
