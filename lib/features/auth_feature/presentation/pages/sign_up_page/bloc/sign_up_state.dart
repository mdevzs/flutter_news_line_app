part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(true) bool obscurePassword,
    @Default(false) bool agreeToTerms,
    @Default(false) bool isSubmited,    
  }) = _SignUpState;
}
