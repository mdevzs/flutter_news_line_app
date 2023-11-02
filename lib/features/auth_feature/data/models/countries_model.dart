import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/auth_feature/data/models/countries_data_model.dart';
import 'package:news_line_app/features/auth_feature/data/models/countries_meta_model.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/countries_data_entity.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/countries_entity.dart';

part 'countries_model.freezed.dart';
part 'countries_model.g.dart';

@freezed
class CountriesModel with _$CountriesModel {
  const factory CountriesModel({
    required List<CountriesDataModel> data,
    required CountriesMetaModel meta,
  }) = _CountriesModel;

  const CountriesModel._();

  factory CountriesModel.fromJson(Map<String, Object?> json) =>
      _$CountriesModelFromJson(json);

  CountriesEntity toEntity() {
    final cData = <CountriesDataEntity>[];
    for (var element in data) {
      cData.add(element.toEntity());
    }
    return CountriesEntity(data: cData, meta: meta.toEntity());
  }
}
