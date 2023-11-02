part of 'sign_up_select_country_bloc.dart';

@freezed
class SignUpSelectCountryState with _$SignUpSelectCountryState {
  const factory SignUpSelectCountryState({
    @Default(-1) int countrySelectedId,
    @Default(false) bool hasReachedEnd,
    @Default(false) bool isLoadingMoreError,
    required List<CountriesDataEntity> countries,
    required SignUpGetAllCountriesState getAllCountriesState,
    @Default(LoadingMore.loading()) LoadingMore loadingMore,
  }) = _SignUpSelectCountryState;
}
