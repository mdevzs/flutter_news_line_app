import 'package:freezed_annotation/freezed_annotation.dart';

part 'tags_entity.freezed.dart';

@freezed
class TagsEntity with _$TagsEntity {
  const factory TagsEntity({
    required int id,
    required String name,
    required String image,
  }) = _TagsEntity;
}
