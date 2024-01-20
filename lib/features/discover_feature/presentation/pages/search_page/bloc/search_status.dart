import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_status.freezed.dart';

@freezed
class SearchStatus with _$SearchStatus {
  const factory SearchStatus.initial() = _SearchStatusInitial;
  const factory SearchStatus.loading() = _SearchStatusLoading;
  const factory SearchStatus.success() = _SearchStatusSuccess;
  const factory SearchStatus.error(String message) = _SearchStatusError;
}