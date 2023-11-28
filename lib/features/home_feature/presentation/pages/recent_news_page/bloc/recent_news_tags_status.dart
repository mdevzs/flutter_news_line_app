import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/tags_entity.dart';

part 'recent_news_tags_status.freezed.dart';

@freezed
class RecentNewsTagsStatus with _$RecentNewsTagsStatus {
  const factory RecentNewsTagsStatus.loading() = _RecentNewsTagsStatusLoading;
  const factory RecentNewsTagsStatus.success(List<TagsEntity> tags) =
      _RecentNewsTagsStatusSuccess;
  const factory RecentNewsTagsStatus.error(String message) =
      _RecentNewsTagsStatusError;
}
