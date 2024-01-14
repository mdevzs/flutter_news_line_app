part of 'discover_bloc.dart';

@freezed
class DiscoverState with _$DiscoverState {
  const factory DiscoverState(
    {
      @Default(DiscoverStatus.loading()) DiscoverStatus discoverStatus,
    }
  ) = _DiscoverState;
}
