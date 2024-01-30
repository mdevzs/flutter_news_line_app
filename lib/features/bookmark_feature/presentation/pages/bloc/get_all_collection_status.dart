import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/bookmarks.dart';

part 'get_all_collection_status.freezed.dart';

@freezed
class GetAllCollectionStatus with _$GetAllCollectionStatus {
  const factory GetAllCollectionStatus.initial() =
      _GetAllCollectionStatusInitial;
  const factory GetAllCollectionStatus.success(List<Bookmarks> bookmarks) =
      _GetAllCollectionStatusSuccess;
  const factory GetAllCollectionStatus.error(String message) =
      _GetAllCollectionStatusError;
}
