import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reply_comment_state.dart';
part 'reply_comment_cubit.freezed.dart';

class ReplyCommentCubit extends Cubit<ReplyCommentState> {
  ReplyCommentCubit() : super(const ReplyCommentState());

  void replyComment(String username, int? parentId) {
    emit(state.copyWith(
      username: username,
      parentId: parentId,
      isReplying: true,
    ));
  }

  void cancelReply() {
    emit(state.copyWith(
      isReplying: false,
      parentId: null,
    ));
  }
}
