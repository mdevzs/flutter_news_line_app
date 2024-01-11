import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/comments_entity.dart';

part 'get_all_comments_entity.freezed.dart';

@freezed
class GetAllCommentsEntity with _$GetAllCommentsEntity {
  const factory GetAllCommentsEntity({
    required List<CommentsEntity> top,
    required List<CommentsEntity> newest,
  }) = _GetAllCommentsEntity;
}
