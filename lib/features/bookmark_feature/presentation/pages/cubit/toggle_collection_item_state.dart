part of 'toggle_collection_item_cubit.dart';

@freezed
class ToggleCollectionItemState with _$ToggleCollectionItemState {
  const factory ToggleCollectionItemState({
    @Default(1) int index
  }) = _ToggleCollectionItemState;
}
