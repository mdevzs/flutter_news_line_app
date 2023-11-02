
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/countries_data_entity.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/countries_meta_entity.dart';

part 'countries_entity.freezed.dart';

@freezed
class CountriesEntity with _$CountriesEntity {
  const factory CountriesEntity({
    required List<CountriesDataEntity> data,
    required CountriesMetaEntity meta,
  }) = _CountriesEntity;
}
