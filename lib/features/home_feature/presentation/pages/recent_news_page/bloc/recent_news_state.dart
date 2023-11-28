part of 'recent_news_bloc.dart';

@freezed
class RecentNewsState with _$RecentNewsState {
  const factory RecentNewsState({
    @Default([]) List<NewsEntity> recentNews,
    @Default(0) int selectedTagId,
    @Default(false) bool hasNewsReachedEnd,
    @Default(RecentNewsTagsStatus.loading()) RecentNewsTagsStatus tagsStatus,
    @Default(RecentNewsStatus.loading()) RecentNewsStatus recentNewsStatus,
    @Default(RecentNewsLoadinMoreStatus.loading()) RecentNewsLoadinMoreStatus recentLoadingMoreStatus,
  }) = _RecentNewsState;
}
