import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_tag_state.dart';
part 'add_tag_cubit.freezed.dart';

class AddTagCubit extends Cubit<AddTagState> {
  AddTagCubit() : super(const AddTagState());

  addTag(String tag) {
    final newsTags = state.tags.add(tag);
    emit(state.copyWith(tags: newsTags));
  }

  removeTag(String tag) {
    final newTags = state.tags.remove(tag);
    emit(state.copyWith(tags: newTags));
  }
}
