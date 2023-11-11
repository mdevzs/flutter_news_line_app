part of 'sign_up_create_prfile_bloc.dart';

@freezed
class SignUpCreatePrfileState with _$SignUpCreatePrfileState {
  const factory SignUpCreatePrfileState({
    File? imageFile,
    @Default(false) bool signUpIsLoading,    
    CreateProfileState? createProfileState,
  }) = _SignUpCreatePrfileState;
}
