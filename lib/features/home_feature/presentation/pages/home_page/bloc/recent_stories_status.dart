import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_entity.dart';

part 'recent_stories_status.freezed.dart';

@freezed
class RecentStoriesStatus with _$RecentStoriesStatus {
  const factory RecentStoriesStatus.loading() = _RecentLoading;
  const factory RecentStoriesStatus.success(List<NewsEntity> recentStories) =
      _RecentSuccess;
  const factory RecentStoriesStatus.error(String message) = _RecentError;
}
