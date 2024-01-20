import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/tag_entity.dart';

part 'tag_model.freezed.dart';
part 'tag_model.g.dart';

@freezed
class TagModel with _$TagModel {
  factory TagModel({
    int? id,
    String? tag,
    String? image,
    int? postsCount,
  }) = _TagModel;

  const TagModel._();

  factory TagModel.fromJson(Map<String, dynamic> json) =>
      _$TagModelFromJson(json);

  TagEntity toEntity() => TagEntity(
        id: id,
        image: image,
        tag: tag,
        postsCount: postsCount,
      );
}
