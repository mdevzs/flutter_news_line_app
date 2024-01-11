import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/home_feature/data/models/home_model/comments_model.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/comments_entity.dart';

import '../../../domain/entities/home_entity/get_all_comments_entity.dart';

part 'get_all_comments_model.freezed.dart';
part 'get_all_comments_model.g.dart';

@freezed
class GetAllCommentsModel with _$GetAllCommentsModel {
  const factory GetAllCommentsModel({
    List<CommentsModel>? top,
    List<CommentsModel>? newest,
  }) = _GetAllCommentsModel;

  const GetAllCommentsModel._();

  factory GetAllCommentsModel.fromJson(Map<String, Object?> json) =>
      _$GetAllCommentsModelFromJson(json);

  GetAllCommentsEntity toEntity() {
    final List<CommentsEntity> topNews = [];
    final List<CommentsEntity> newestNews = [];

    if (top != null) {
      for (final tNews in top!) {
        topNews.add(tNews.toEntity());
      }
    }
    if (newest != null) {
      for (final nNews in newest!) {
        newestNews.add(nNews.toEntity());
      }
    }

    return GetAllCommentsEntity(
      top: topNews,
      newest: newestNews,
    );
  }
}
