part of 'recent_news_bloc.dart';

@freezed
class RecentNewsEvent with _$RecentNewsEvent {
  const factory RecentNewsEvent.getAllTags() = _GetAllTags;
  const factory RecentNewsEvent.selectTag(TagsEntity tag) = _SelectTagId;
  const factory RecentNewsEvent.getAllRecentNews({@Default('') String tag}) =
      _GetAllRecentNews;
  const factory RecentNewsEvent.loadMoreNews(
      {@Default(false) bool loadingMoreTryAgin}) = _LoadMoreNews;
}
