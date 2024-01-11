import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/home_feature/data/models/home_model/tag_model.dart';

part 'detail_news_tag_entity.freezed.dart';

@freezed
class DetailNewsTagEntity with _$DetailNewsTagEntity {
  const factory DetailNewsTagEntity({
    required TagModel tag,
  }) = _DetailNewsTagEntity;
}
