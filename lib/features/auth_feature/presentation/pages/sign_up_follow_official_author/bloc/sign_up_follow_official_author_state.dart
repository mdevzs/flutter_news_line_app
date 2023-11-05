part of 'sign_up_follow_official_author_bloc.dart';

@Freezed(makeCollectionsUnmodifiable: false,equal: false)
class SignUpFollowOfficialAuthorState with _$SignUpFollowOfficialAuthorState {
  const factory SignUpFollowOfficialAuthorState({
    @Default([]) List<int> selectedOfficialAuthorToFollow,
    @Default(GetAllOfficialAuthorState.initial())
    GetAllOfficialAuthorState getAllOfficialAuthorState,
  }) = _SignUpFollowOfficialAuthorState;
}
