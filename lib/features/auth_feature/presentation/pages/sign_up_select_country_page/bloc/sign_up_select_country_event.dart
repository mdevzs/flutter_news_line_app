part of 'sign_up_select_country_bloc.dart';

@freezed
class SignUpSelectCountryEvent with _$SignUpSelectCountryEvent {
  const factory SignUpSelectCountryEvent.getCountries(String? q) = _GetCountries;
  const factory SignUpSelectCountryEvent.loadMore({required bool isTryAgain,required String q}) = _LoadMore;
  const factory SignUpSelectCountryEvent.selectCountry({required int id}) =
      _SelectCountry;    
}
