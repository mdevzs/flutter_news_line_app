part of 'sign_up_create_prfile_bloc.dart';

@freezed
class SignUpCreatePrfileEvent with _$SignUpCreatePrfileEvent {
  const factory SignUpCreatePrfileEvent.pickFile(File imageFile) = _PickeFile;
  const factory SignUpCreatePrfileEvent.createProfile(SignUpParams signUpParams) = _CreateProfile;
}