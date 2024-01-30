import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_new_collection_status.freezed.dart';

@freezed
class AddNewCollectionStatus with _$AddNewCollectionStatus {
  const factory AddNewCollectionStatus.initial() =
      _AddNewCollectionStatusInitial;
  const factory AddNewCollectionStatus.success() =
      _AddNewCollectionStatusSuccess;
  const factory AddNewCollectionStatus.error(String message) =
      _AddNewCollectionStatusError;
}
