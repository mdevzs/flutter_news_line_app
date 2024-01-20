part of 'search_bloc.dart';

@Freezed(
  equal: false,
)
class SearchState with _$SearchState {
  const factory SearchState(
    {
      DiscoverSearchEntity?  searchEntity,
      @Default(SearchStatus.initial()) SearchStatus searchStatus,
    }
  ) = _SearchState;
}
