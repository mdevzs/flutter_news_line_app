part of 'trending_news_bloc.dart';

@freezed
class TrendingNewsEvent with _$TrendingNewsEvent {
  const factory TrendingNewsEvent.getAllTrendingNews() = _GetAllTrendingNews;
  const factory TrendingNewsEvent.loadMore({@Default(false) bool loadingMoreTryAgain}) =
      _LoadMoreTrendingNews;
}
