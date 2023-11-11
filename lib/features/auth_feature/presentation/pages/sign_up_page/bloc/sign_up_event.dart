part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.obscurePasswordToggled() = _ObsecurePasswordToggled;
  const factory SignUpEvent.agreeToTermsToggled() = _AgreeToTermsToggled;
  const factory SignUpEvent.submit() = _Submit;
}