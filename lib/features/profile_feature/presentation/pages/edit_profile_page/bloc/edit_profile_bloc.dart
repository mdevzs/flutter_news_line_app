import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/core/params/edit_profile_params.dart';
import 'package:news_line_app/features/profile_feature/domain/usecases/edit_profile_usecase.dart';
import 'package:news_line_app/features/profile_feature/presentation/pages/edit_profile_page/bloc/edit_profile_status.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';
part 'edit_profile_bloc.freezed.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final EditProfileUsecase editProfileUsecase;
  EditProfileBloc(this.editProfileUsecase) : super(const EditProfileState()) {
    on<EditProfileEvent>((event, emit) async {
      await event.when<FutureOr>(
        editProfile: (profileId, body) => _editProfile(
          emit,
          profileId,
          body,
        ),
      );
    });
  }

  _editProfile(
    Emitter<EditProfileState> emit,
    int profileId,
    EditProfileParams body,
  ) async {
    emit(state.copyWith(editProfileStatus: const EditProfileStatus.loading()));
    final failureOrEntity = await editProfileUsecase((profileId, body));
    failureOrEntity.fold((l) {
      emit(
        state.copyWith(
          editProfileStatus: EditProfileStatus.error(l.message),
        ),
      );
    }, (r) {
      emit(
        state.copyWith(
          editProfileStatus: const EditProfileStatus.success(),
        ),
      );
    });
  }
}
