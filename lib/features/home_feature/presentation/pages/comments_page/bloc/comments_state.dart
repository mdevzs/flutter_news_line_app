part of 'comments_bloc.dart';

@Freezed(
  makeCollectionsUnmodifiable: false,
  equal: false,
)
// @unfreezed
class CommentsState with _$CommentsState {
  factory CommentsState({
    @Default(IListConst([])) IList<CommentsEntity> topComments,
    @Default(IListConst([])) IList<CommentsEntity> newestComments,
    @Default(CommentsStatus.loading()) CommentsStatus commentsSatus,
    @Default(AddCommentStatus.initial()) AddCommentStatus addCommentState,
    @Default(false) bool isReplying,
    String? repliedUsername,
  }) = _CommentsState;
}
