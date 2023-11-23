part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeStatus.initial()) HomeStatus homeStatus,
    @Default(RecentStoriesStatus.loading())
    RecentStoriesStatus recentStoriesStatus,
    @Default(0) int selectedTagId,
  }) = _HomeState;
}
