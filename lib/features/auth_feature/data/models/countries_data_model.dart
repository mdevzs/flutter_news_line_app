import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/countries_data_entity.dart';

part 'countries_data_model.freezed.dart';
part 'countries_data_model.g.dart';

@freezed
class CountriesDataModel with _$CountriesDataModel {
  const factory CountriesDataModel({
    required int id,
    required String name,
    required String flag,
  }) = _CountriesDataModel;

  const CountriesDataModel._();

  factory CountriesDataModel.fromJson(Map<String, Object?> json) =>
      _$CountriesDataModelFromJson(json);

  CountriesDataEntity toEntity() => CountriesDataEntity(
        id:id,
        name: name,
        flag: flag,
      );
}
