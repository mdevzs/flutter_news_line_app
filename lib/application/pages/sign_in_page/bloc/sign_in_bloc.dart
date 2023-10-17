import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(const SignInState()) {
    on<SignInEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
        obsecurePasswordToggle: () => _obsecurePasswordToggle(emit),
        rememberMeToggle: () => _rememberMeToggle(emit),
      );
    });
  }

  void _obsecurePasswordToggle(Emitter<SignInState> emit) {
    emit(state.copyWith(obscurePassword: !state.obscurePassword));
  }

  void _rememberMeToggle(Emitter<SignInState> emit) {
    emit(state.copyWith(
      rememberMe: !state.rememberMe
    ));
  }
}
