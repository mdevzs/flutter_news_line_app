import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'toggle_collection_item_state.dart';
part 'toggle_collection_item_cubit.freezed.dart';

class ToggleCollectionItemCubit extends Cubit<ToggleCollectionItemState> {
  ToggleCollectionItemCubit() : super(const ToggleCollectionItemState());

  toggle(int index) {
    emit(state.copyWith(
      index: index,
    ));
  }
}
