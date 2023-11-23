import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/home_entity/tag_entity.dart';
import 'tag_model.dart';

part 'tag_news_model.freezed.dart';
part 'tag_news_model.g.dart';

@freezed
class TagNewsModel with _$TagNewsModel {
  factory TagNewsModel({
    List<TagModel>? tagNews,
  }) = _TagNewsModel;

  const TagNewsModel._();

  factory TagNewsModel.fromJson(Map<String, dynamic> json) =>
      _$TagNewsModelFromJson(json);

  List<TagEntity> toEntity() {
    List<TagEntity> tagNewsEntity = [];
    if (tagNews != null) {
      for (final tag in tagNews!) {
        tagNewsEntity.add(tag.toEntity());
      }
    }
    return tagNewsEntity;
  }
}
