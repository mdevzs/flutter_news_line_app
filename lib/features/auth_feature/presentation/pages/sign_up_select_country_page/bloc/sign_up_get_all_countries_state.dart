import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_get_all_countries_state.freezed.dart';

@freezed
class SignUpGetAllCountriesState with _$SignUpGetAllCountriesState {
  const factory SignUpGetAllCountriesState.initial() = _Initial;
  const factory SignUpGetAllCountriesState.loading({@Default(false) bool isLoadingMore}) = _Loading;
  const factory SignUpGetAllCountriesState.success() =
      _Success;
  const factory SignUpGetAllCountriesState.error(String message) = _Error;
}
