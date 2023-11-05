part of 'sign_up_follow_official_author_bloc.dart';

@freezed
class SignUpFollowOfficialAuthorEvent with _$SignUpFollowOfficialAuthorEvent {
  const factory SignUpFollowOfficialAuthorEvent.getAllOfficialAuthors() = _GetAllOfficialAuthors;
  const factory SignUpFollowOfficialAuthorEvent.followOfficialAuthor(int officialAuthorId) = _FollowOfficialAuthor;
}