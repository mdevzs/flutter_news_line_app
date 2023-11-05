import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/core/usecase/usecase.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_follow_official_author/bloc/get_all_official_authtor_state.dart';

import '../../../../domain/usecases/sign_up/sign_up_follow_official_author_usecase.dart';

part 'sign_up_follow_official_author_event.dart';
part 'sign_up_follow_official_author_state.dart';
part 'sign_up_follow_official_author_bloc.freezed.dart';

class SignUpFollowOfficialAuthorBloc extends Bloc<
    SignUpFollowOfficialAuthorEvent, SignUpFollowOfficialAuthorState> {
  final SignUpFollowOfficialAuthorUseCase followOfficialAuthorUsecase;
  SignUpFollowOfficialAuthorBloc(this.followOfficialAuthorUsecase)
      : super(const SignUpFollowOfficialAuthorState()) {
    on<SignUpFollowOfficialAuthorEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
        getAllOfficialAuthors: () => _getAllOfficialAuthors(emit),
        followOfficialAuthor: (officialAuthorId) =>
            _followOfficialAuthor(emit, officialAuthorId),
      );
    });
  }

  void _getAllOfficialAuthors(
      Emitter<SignUpFollowOfficialAuthorState> emit) async {
    emit(
      state.copyWith(
          getAllOfficialAuthorState: const GetAllOfficialAuthorState.loading()),
    );

    final failureOrOfficialAuthor =
        await followOfficialAuthorUsecase(NoParams());
    failureOrOfficialAuthor.fold(
      (failure) => emit(
        state.copyWith(
          getAllOfficialAuthorState:
              GetAllOfficialAuthorState.error(failure.message),
        ),
      ),
      (officialAuthor) => emit(
        state.copyWith(
          getAllOfficialAuthorState:
              GetAllOfficialAuthorState.success(officialAuthor),
        ),
      ),
    );
  }

  void _followOfficialAuthor(
      Emitter<SignUpFollowOfficialAuthorState> emit, int officialAuthorId) {
    final followedOfficial = state.selectedOfficialAuthorToFollow;
    if (followedOfficial.contains(officialAuthorId)) {
      followedOfficial.remove(officialAuthorId);
      emit(state.copyWith(selectedOfficialAuthorToFollow: followedOfficial));
    } else {
      emit(state.copyWith(
        selectedOfficialAuthorToFollow: [...followedOfficial, officialAuthorId],
      ));
    }
  }
}
