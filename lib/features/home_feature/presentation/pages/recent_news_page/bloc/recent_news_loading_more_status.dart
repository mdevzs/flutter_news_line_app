import 'package:freezed_annotation/freezed_annotation.dart';

part 'recent_news_loading_more_status.freezed.dart';

@freezed
class RecentNewsLoadinMoreStatus with _$RecentNewsLoadinMoreStatus {
  const factory RecentNewsLoadinMoreStatus.loading() = _Loading;
  const factory RecentNewsLoadinMoreStatus.error(String message) = _Error;
}
