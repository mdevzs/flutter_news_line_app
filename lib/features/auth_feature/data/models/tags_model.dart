import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/tags_entity.dart';

part 'tags_model.freezed.dart';
part 'tags_model.g.dart';

@freezed
class TagsModel with _$TagsModel {
  const factory TagsModel({
    required int id,
    required String tag,
    required String imageUrl,
  }) = _TagsModel;

  const TagsModel._();

  factory TagsModel.fromJson(Map<String, Object?> json) =>
      _$TagsModelFromJson(json);

  TagsEntity toEntity() => TagsEntity(
        id: id,
        name: tag,
        image: imageUrl,
      );
}
