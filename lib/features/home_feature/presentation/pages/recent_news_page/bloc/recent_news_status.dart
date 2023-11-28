import 'package:freezed_annotation/freezed_annotation.dart';

part 'recent_news_status.freezed.dart';

@freezed
class RecentNewsStatus with _$RecentNewsStatus {
  const factory RecentNewsStatus.loading() = _RecentNewsStatusLoading;
  const factory RecentNewsStatus.success() = _RecentNewsStatusSuccess;
  const factory RecentNewsStatus.error(String message) = _RecentNewsStatusError;
}
