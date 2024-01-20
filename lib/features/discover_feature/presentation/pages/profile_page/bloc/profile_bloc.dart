import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/discover_feature/domain/usecases/profile_usecase.dart';
import 'package:news_line_app/features/discover_feature/presentation/pages/profile_page/bloc/profile_status.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileUsecase usecase;
  ProfileBloc(this.usecase) : super(const ProfileState()) {
    on<ProfileEvent>((event, emit) async {
      await event.when(
        getProfile: (profileId) => _profile(emit, profileId),
      );
    });
  }

  _profile(Emitter<ProfileState> emit, int profileId) async {
    emit(
      state.copyWith(
        profileStatus: const ProfileStatus.loading(),
      ),
    );
    final failureOrEntity = await usecase(profileId);
    failureOrEntity.fold(
      (l) => emit(
        state.copyWith(
          profileStatus: ProfileStatus.error(l.message),
        ),
      ),
      (profileEntity) => emit(
        state.copyWith(
          profileStatus: ProfileStatus.success(profileEntity),
        ),
      ),
    );
  }
}
