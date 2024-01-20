part of 'search_text_cubit.dart';

@freezed
class SearchTextState with _$SearchTextState {
  const factory SearchTextState(
    {
      @Default('') String searchText,
    }
  ) = _SearchTextState;
}
