part of 'comments_bloc.dart';

@freezed
class CommentsEvent with _$CommentsEvent {
  const factory CommentsEvent.getAllComments(String newsId) = _GetAllComments;
  const factory CommentsEvent.sendComment(
    String comment,
    int? parentId,
    int selectedTabIndex,
    String newsId,
  ) = _SendComment;
  const factory CommentsEvent.likeComment(
    int commentId,
    int selectedTabIndex,
  ) = _LikeComment;
  const factory CommentsEvent.replyComment(
    String? username,
  ) = _ReplyComment;
}
