import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_entity.freezed.dart';

@freezed
class TagEntity with _$TagEntity {
  factory TagEntity({
    int? id,
    String? tag,
    String? image,
  }) = _TagEntity;
}
