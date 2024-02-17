import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/core/usecase/usecase.dart';
import 'package:news_line_app/features/auth_feature/domain/usecases/sign_up/sign_up_select_intrested_tag_usecase.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_select_intrested_tag_page/bloc/get_all_tags_state.dart';

part 'sign_up_select_intrested_tag_event.dart';
part 'sign_up_select_intrested_tag_state.dart';
part 'sign_up_select_intrested_tag_bloc.freezed.dart';

class SignUpSelectIntrestedTagBloc
    extends Bloc<SignUpSelectIntrestedTagEvent, SignUpSelectIntrestedTagState> {
  final SignUpSelectIntrestedTagUseCase tagUseCase;
  SignUpSelectIntrestedTagBloc(this.tagUseCase)
      : super(
          SignUpSelectIntrestedTagState(
            selectedIntrestedTags: [],
          ),
        ) {
    on<SignUpSelectIntrestedTagEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
        getAllTags: () => _getAllTags(emit),
        selectIntrestedTag: (tagId) => _selectIntrestedTags(emit, tagId),
      );
    });
  }

  void _getAllTags(Emitter<SignUpSelectIntrestedTagState> emit) async {
    emit(state.copyWith(tagsState: const GetAllTagsState.loading()));

    final failureOrTags = await tagUseCase(NoParams());
    failureOrTags.fold(
      (failure) => emit(
          state.copyWith(tagsState: GetAllTagsState.error(failure.message))),
      (tags) => emit(state.copyWith(tagsState: GetAllTagsState.success(tags))),
    );
  }

  void _selectIntrestedTags(
      Emitter<SignUpSelectIntrestedTagState> emit, int tagId) {
    if (state.selectedIntrestedTags.contains(tagId)) {
      state.selectedIntrestedTags.remove(tagId);
      emit(state.copyWith(
        selectedIntrestedTags: state.selectedIntrestedTags,
      ));
    } else {
      emit(state.copyWith(
        selectedIntrestedTags: [...state.selectedIntrestedTags, tagId],
      ));
    }
  }
}
