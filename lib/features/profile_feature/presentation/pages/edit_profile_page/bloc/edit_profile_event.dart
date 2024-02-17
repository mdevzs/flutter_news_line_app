part of 'edit_profile_bloc.dart';

@freezed
class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.editProfile(
    int profileId,
    EditProfileParams body,
  ) = _EditProfile;
}
