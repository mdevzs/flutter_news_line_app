part of 'toggle_section_cubit.dart';

@freezed
class ToggleSectionState with _$ToggleSectionState {
  const factory ToggleSectionState({
    @Default(0) int selectedSectionIndex,
  }) = _ToggleSectionState;
}
