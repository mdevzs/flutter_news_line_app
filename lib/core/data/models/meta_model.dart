import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/core/domain/entities/meta_entity.dart';

part 'meta_model.freezed.dart';
part 'meta_model.g.dart';

@freezed
class MetaModel with _$MetaModel {
  const factory MetaModel({
    required int? total,
    required int? lastPage,
    required int? currentPage,
    required int? perPage,
    required int? prev,
    required int? next,
  }) = _MetaModel;

  const MetaModel._();

  factory MetaModel.fromJson(Map<String, Object?> json) =>
      _$MetaModelFromJson(json);

  MetaEntity toEntity() => MetaEntity(
        total: total,
        lastPage: lastPage,
        currentPage: currentPage,
        perPage: perPage,
        prev: prev,
        next: next,
      );
}
