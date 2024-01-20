import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'toggle_section_state.dart';
part 'toggle_section_cubit.freezed.dart';

class ToggleSectionCubit extends Cubit<ToggleSectionState> {
  ToggleSectionCubit() : super(const ToggleSectionState());

  toggle(int selectedIndex) {
    emit(
      state.copyWith(
        selectedSectionIndex: selectedIndex,
      ),
    );
  }

  dispose() {
    emit(
      state.copyWith(
        selectedSectionIndex: 0,
      ),
    );
  }
}
