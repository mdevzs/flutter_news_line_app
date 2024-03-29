import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  SignUpBloc() : super(const SignUpState()) {
    on<SignUpEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
        obscurePasswordToggled: () => _obscurePasswordToggled(emit),
        agreeToTermsToggled: () => _agreeToTermsToggled(emit),
        submit: () => _submitting(emit),
      );
    });
  }

  void _obscurePasswordToggled(Emitter<SignUpState> emit) {
    emit(
      state.copyWith(obscurePassword: !state.obscurePassword),
    );
  }

  void _agreeToTermsToggled(Emitter<SignUpState> emit) {
    emit(
      state.copyWith(agreeToTerms: !state.agreeToTerms),
    );
  }

  void _submitting(Emitter<SignUpState> emit) {
    emit(
      state.copyWith(isSubmited: true),
    );
  }
}
