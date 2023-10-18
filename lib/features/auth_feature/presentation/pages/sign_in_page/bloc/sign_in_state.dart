part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    @Default(true) bool obscurePassword,
    @Default(false) bool rememberMe,
    @Default(false) bool isSubmitting,    
  }) = _SignInState;  
}
