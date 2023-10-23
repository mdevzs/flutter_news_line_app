import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/auth_feature/domain/usecases/sign_in_usecase.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_in_page/bloc/sign_in_submited_state.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInUsecase signInUsecase;
  final _cancelToken = CancelToken();
  SignInBloc(this.signInUsecase) : super(const SignInState()) {
    on<SignInEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
        obsecurePasswordToggle: () => _obsecurePasswordToggle(emit),
        rememberMeToggle: () => _rememberMeToggle(emit),
        signInSubmitted: (signInParams) => _signInSubmitted(emit, signInParams),
        dispose: () => _dispose(emit),
      );
    });
  }

  void _obsecurePasswordToggle(Emitter<SignInState> emit) {
    emit(state.copyWith(obscurePassword: !state.obscurePassword));
  }

  void _rememberMeToggle(Emitter<SignInState> emit) {
    emit(state.copyWith(rememberMe: !state.rememberMe));
  }

  void _signInSubmitted(
      Emitter<SignInState> emit, Map<String, dynamic> body) async {
    emit(
      state.copyWith(isSignInSubmittedLoading: true),
    );

    final userOrFailure = await signInUsecase((body, _cancelToken));
    userOrFailure.fold((failure) {
      failure.when(
        serverFailure: (message) {
          emit(
            state.copyWith(
              isSignInSubmittedLoading: false,
              signInSubmittedState: SignInSubmittedState.error(failure.message),
            ),
          );
        },
        generalFailure: (message) {
          emit(
            state.copyWith(
              isSignInSubmittedLoading: false,
              signInSubmittedState: SignInSubmittedState.error(failure.message),
            ),
          );
        },
      );
      // emit(
      //   state.copyWith(
      //     isSignInSubmittedLoading: false,
      //     signInSubmittedState: SignInSubmittedState.error(failure.message),
      //   ),
      // );
    }, (user) {
      emit(
        state.copyWith(
          isSignInSubmittedLoading: false,
          signInSubmittedState: SignInSubmittedState.loaded(user),
        ),
      );
    });
  }

  void _dispose(Emitter<SignInState> emit) async {
    _cancelToken.cancel;
    emit(const SignInState());
  }
}
