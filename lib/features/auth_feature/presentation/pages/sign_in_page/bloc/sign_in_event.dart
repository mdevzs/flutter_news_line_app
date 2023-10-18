part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.obsecurePasswordToggle() = _ObsecurePasswordToggle;
  const factory SignInEvent.rememberMeToggle() = _RememberMeToggle;
}
