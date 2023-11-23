import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_entity.freezed.dart';

@freezed
class MetaEntity with _$MetaEntity {
  const factory MetaEntity({
    required int? total,
    required int? lastPage,
    required int? currentPage,
    required int? perPage,
    required int? prev,
    required int? next,
  }) = _MetaEntity;
}
