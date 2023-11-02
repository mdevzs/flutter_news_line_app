import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/countries_meta_entity.dart';

part 'countries_meta_model.freezed.dart';
part 'countries_meta_model.g.dart';

@freezed
class CountriesMetaModel with _$CountriesMetaModel {
  const factory CountriesMetaModel({
    required int? total,
    required int? lastPage,
    required int? currentPage,
    required int? perPage,
    required int? prev,
    required int? next,
  }) = _CountriesMetaModel;

  const CountriesMetaModel._();

  factory CountriesMetaModel.fromJson(Map<String, Object?> json) =>
      _$CountriesMetaModelFromJson(json);

  CountriesMetaEntity toEntity() => CountriesMetaEntity(
        total: total,
        lastPage: lastPage,
        currentPage: currentPage,
        perPage: perPage,
        prev: prev,
        next: next,
      );
}
