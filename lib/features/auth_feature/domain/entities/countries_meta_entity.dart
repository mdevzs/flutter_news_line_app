
import 'package:freezed_annotation/freezed_annotation.dart';

part 'countries_meta_entity.freezed.dart';

@freezed
class CountriesMetaEntity with _$CountriesMetaEntity {
  const factory CountriesMetaEntity({
    required int? total,
    required int? lastPage,
    required int? currentPage,
    required int? perPage,
    required int? prev,
    required int? next,
  }) = _CountriesMetaEntity;

}