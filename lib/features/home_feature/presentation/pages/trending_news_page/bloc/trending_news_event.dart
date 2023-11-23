part of 'trending_news_bloc.dart';

@freezed
class TrendingNewsEvent with _$TrendingNewsEvent {
  const factory TrendingNewsEvent.started() = _Started;
}