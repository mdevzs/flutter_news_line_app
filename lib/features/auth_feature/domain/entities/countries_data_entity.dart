import 'package:freezed_annotation/freezed_annotation.dart';

part 'countries_data_entity.freezed.dart';

@freezed
class CountriesDataEntity with _$CountriesDataEntity {
  const factory CountriesDataEntity({
    required int id,
    required String name,
    required String flag,
  }) = _CountriesDataEntity;
}