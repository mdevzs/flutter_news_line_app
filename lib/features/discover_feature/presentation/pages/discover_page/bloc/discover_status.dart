import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/discover_feature/domain/entities/discover_entity.dart';

part 'discover_status.freezed.dart';

@freezed
class DiscoverStatus with _$DiscoverStatus {
  const factory DiscoverStatus.loading() = _DiscoverStatusLoading;
  const factory DiscoverStatus.success(DiscoverEntity discoverEntity) = _DiscoverStatusSuccess;
  const factory DiscoverStatus.error(String message) = _DiscoverStatusError;
}
