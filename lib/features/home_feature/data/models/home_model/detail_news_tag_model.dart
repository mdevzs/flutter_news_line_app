import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/home_feature/data/models/home_model/tag_model.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/detail_news_tag_entity.dart';

part 'detail_news_tag_model.freezed.dart';
part 'detail_news_tag_model.g.dart';

@freezed
class DetailNewsTagModel with _$DetailNewsTagModel {
  const factory DetailNewsTagModel({
    required TagModel tag,
  }) = _DetailNewsTagModel;

  const DetailNewsTagModel._();

  factory DetailNewsTagModel.fromJson(Map<String, Object?> json) =>
      _$DetailNewsTagModelFromJson(json);

  DetailNewsTagEntity toEntity() => DetailNewsTagEntity(tag: tag);
}
