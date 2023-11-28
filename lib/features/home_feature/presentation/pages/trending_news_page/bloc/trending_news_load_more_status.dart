import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_news_load_more_status.freezed.dart';

@freezed
class TrendingNewsLoadMoreStatus with _$TrendingNewsLoadMoreStatus {
  const factory TrendingNewsLoadMoreStatus.loading() = _Loading;
  const factory TrendingNewsLoadMoreStatus.error(String message) = _Error;
}
