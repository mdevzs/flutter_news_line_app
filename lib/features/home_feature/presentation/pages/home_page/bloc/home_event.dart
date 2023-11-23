part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getHome() = _GetHome;
  const factory HomeEvent.getRecentStories(String tag) = _GetRecentStories;
  const factory HomeEvent.selectTag(int tagId) = _SelectTagHome;
}
