part of 'reply_comment_cubit.dart';

@freezed
class ReplyCommentState with _$ReplyCommentState {
  const factory ReplyCommentState({
    @Default('') String username,
    int? parentId,
    @Default(false) bool isReplying,
  }) = _ReplyCommentState;
}
