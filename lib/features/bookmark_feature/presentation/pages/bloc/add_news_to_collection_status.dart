import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_news_to_collection_status.freezed.dart';

@freezed
class AddNewsToCollectionStatus with _$AddNewsToCollectionStatus {
  const factory AddNewsToCollectionStatus.initial() =
      _AddNewsToCollectionStatusInitial;
  const factory AddNewsToCollectionStatus.success() =
      _AddNewsToCollectionStatusSuccess;
  const factory AddNewsToCollectionStatus.error(String message) =
      _AddNewsToCollectionStatusError;
}
