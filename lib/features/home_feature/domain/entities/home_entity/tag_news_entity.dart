import 'package:freezed_annotation/freezed_annotation.dart';

import 'tag_entity.dart';
part 'tag_news_entity.freezed.dart';

@freezed
class TagNewsEntity with _$TagNewsEntity {
  factory TagNewsEntity({
    List<TagEntity>? tagNews,
  }) = _TagNewsEntity;
}
