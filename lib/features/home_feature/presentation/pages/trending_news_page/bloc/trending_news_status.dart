import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_news_status.freezed.dart';

@freezed
class TrendingNewsStatus with _$TrendingNewsStatus {
  const factory TrendingNewsStatus.loading() = _TrendingNewsStatusLoading;
  const factory TrendingNewsStatus.success() = _TrendingNewsStatusSuccess;
  const factory TrendingNewsStatus.erro(String message) = _TrendingNewsStatusError;
}
