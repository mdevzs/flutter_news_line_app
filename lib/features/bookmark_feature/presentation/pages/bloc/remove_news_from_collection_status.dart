import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_news_from_collection_status.freezed.dart';

@freezed
class RemoveNewsFromCollectionStatus with _$RemoveNewsFromCollectionStatus {
  const factory RemoveNewsFromCollectionStatus.initial() =
      _RemoveNewsFromCollectionStatusInitial;
  const factory RemoveNewsFromCollectionStatus.success() =
      _RemoveNewsFromCollectionStatusSuccess;
  const factory RemoveNewsFromCollectionStatus.error(String message) =
      _RemoveNewsFromCollectionStatusError;
}
