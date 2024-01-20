part of 'discover_bloc.dart';

@freezed
class DiscoverEvent with _$DiscoverEvent {
  const factory DiscoverEvent.discover() = _Discover;
  const factory DiscoverEvent.followAuthor(String followingId) = _DiscoverFollowAuthor;
}