part of 'sign_up_select_intrested_tag_bloc.dart';

@freezed
class SignUpSelectIntrestedTagEvent with _$SignUpSelectIntrestedTagEvent {
  const factory SignUpSelectIntrestedTagEvent.getAllTags() = _GetAllTags;
  const factory SignUpSelectIntrestedTagEvent.selectIntrestedTag(int tagId) = _SelectIntrestedTag;

}