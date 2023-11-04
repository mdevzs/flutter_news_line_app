import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/tags_entity.dart';

part 'get_all_tags_state.freezed.dart';

@freezed
class GetAllTagsState with _$GetAllTagsState {
  const factory GetAllTagsState.initial() = _AllTagsInitial;
  const factory GetAllTagsState.loading() = _AllTagsLoading;
  const factory GetAllTagsState.success(List<TagsEntity>tags) = _AllTagsSuccess;
  const factory GetAllTagsState.error(String message) = _AllTagsError;
}
