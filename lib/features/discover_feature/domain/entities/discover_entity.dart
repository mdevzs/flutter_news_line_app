import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/user_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_entity.dart';

part 'discover_entity.freezed.dart';

@freezed
class DiscoverEntity with _$DiscoverEntity {
  const factory DiscoverEntity({
    required List<NewsEntity> topNews,
    required List<UserEntity> popularPublishers,
    required List<UserEntity> popularAuthors,
    required List<NewsEntity> recommandedNews,
  }) = _DiscoverEntity;
}
