part of 'trending_news_bloc.dart';

@freezed
class TrendingNewsState with _$TrendingNewsState {
  const factory TrendingNewsState({
    @Default([]) List<NewsEntity> trendingNews,
    @Default(TrendingNewsStatus.loading())
    TrendingNewsStatus trendingNewsStatus,
    @Default(false) bool hasReachedEnd,
    @Default(TrendingNewsLoadMoreStatus.loading())
    TrendingNewsLoadMoreStatus loadMoreStatus,
  }) = _TrendingNewsState;
}
