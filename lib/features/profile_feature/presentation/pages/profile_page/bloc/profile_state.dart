part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(ProfileStatus.loading()) ProfileStatus profileStatus,
  }) = _ProfileState;
}
