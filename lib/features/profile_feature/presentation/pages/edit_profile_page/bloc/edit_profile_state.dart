part of 'edit_profile_bloc.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState(
    {
      @Default(EditProfileStatus.initial()) EditProfileStatus editProfileStatus,
    }
  ) = _EditProfileState;
}
