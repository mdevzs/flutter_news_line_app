part of 'sign_up_select_intrested_tag_bloc.dart';

@Freezed(makeCollectionsUnmodifiable: false,equal: false)
class SignUpSelectIntrestedTagState with _$SignUpSelectIntrestedTagState {
   factory SignUpSelectIntrestedTagState({
    required List<int> selectedIntrestedTags,
    @Default(GetAllTagsState.initial()) GetAllTagsState tagsState,
  }) = _SignUpSelectIntrestedTagState;
}
