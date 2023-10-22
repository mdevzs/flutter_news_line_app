import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/user_entity.dart';

part 'sign_in_submited_state.freezed.dart';

@freezed
class SignInSubmittedState with _$SignInSubmittedState {
   const factory SignInSubmittedState.loaded(UserEntity user) =
     _$SignInSubmittedStateLoaded;
   const factory SignInSubmittedState.error(String message) = _$SignInSubmittedStateError;
}
