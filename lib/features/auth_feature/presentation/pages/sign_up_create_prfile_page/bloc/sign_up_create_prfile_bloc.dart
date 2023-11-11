import 'dart:async';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/core/params/sign_up_params.dart';
import 'package:news_line_app/features/auth_feature/domain/usecases/sign_up/sign_up_create_profile_usecase.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_create_prfile_page/bloc/create_profile_state.dart';

part 'sign_up_create_prfile_event.dart';
part 'sign_up_create_prfile_state.dart';
part 'sign_up_create_prfile_bloc.freezed.dart';

class SignUpCreatePrfileBloc
    extends Bloc<SignUpCreatePrfileEvent, SignUpCreatePrfileState> {
  final SignUpCreateProfileUseCase createProfileUseCase;
  SignUpCreatePrfileBloc(this.createProfileUseCase)
      : super(const SignUpCreatePrfileState()) {
    on<SignUpCreatePrfileEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
        pickFile: (imageFile) => _pickFile(emit, imageFile),
        createProfile: (signUpparams) => _createProfile(emit, signUpparams),
      );
    });
  }

  void _pickFile(Emitter<SignUpCreatePrfileState> emit, File imageFile) {
    emit(state.copyWith(imageFile: imageFile));
  }

  void _createProfile(
      Emitter<SignUpCreatePrfileState> emit, SignUpParams signUpParams) async {
    emit(state.copyWith(
      signUpIsLoading: true,
    ));

    final failureOrEntity = await createProfileUseCase(signUpParams);
    failureOrEntity.fold(
        (failur) => emit(state.copyWith(
            signUpIsLoading: false,
            createProfileState: CreateProfileState.error(failur.message))),
        (user) => emit(state.copyWith(
            signUpIsLoading: false,
            createProfileState: CreateProfileState.success(user))));
  }
}
