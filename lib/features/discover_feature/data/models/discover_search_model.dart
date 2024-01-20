import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/auth_feature/data/models/user_model.dart';
import 'package:news_line_app/features/discover_feature/domain/entities/discover_search_entity.dart';
import 'package:news_line_app/features/home_feature/data/models/home_model/tag_model.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/tag_entity.dart';

import '../../../auth_feature/domain/entities/user_entity.dart';
import '../../../home_feature/data/models/home_model/news_model.dart';
import '../../../home_feature/domain/entities/home_entity/news_entity.dart';

part 'discover_search_model.freezed.dart';
part 'discover_search_model.g.dart';

@freezed
class DiscoverSearchModel with _$DiscoverSearchModel {
  const factory DiscoverSearchModel({
    List<NewsModel>? news,
    List<UserModel>? accounts,
    List<TagModel>? tags,
  }) = _DiscoverSearchModel;

  const DiscoverSearchModel._();

  factory DiscoverSearchModel.fromJson(Map<String, dynamic> json) =>
      _$DiscoverSearchModelFromJson(json);

  DiscoverSearchEntity toEntity() {
    final newsEntity = <NewsEntity>[];
    if (news != null) {
      for (final n in news!) {
        newsEntity.add(n.toEntity());
      }
    }
    final accountsEntity = <UserEntity>[];
    if (accounts != null) {
      for (final account in accounts!) {
        accountsEntity.add(account.toEntity());
      }
    }
    final tagsEntity = <TagEntity>[];
    if (tags != null) {
      for (final tag in tags!) {
        tagsEntity.add(tag.toEntity());
      }
    }
    return DiscoverSearchEntity(
      news: newsEntity,
      accounts: accountsEntity,
      tags: tagsEntity,
    );
  }
}
