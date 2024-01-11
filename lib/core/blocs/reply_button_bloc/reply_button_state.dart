part of 'reply_button_bloc.dart';

@freezed
class ReplyButtonState with _$ReplyButtonState {
  const factory ReplyButtonState({
    @Default(false) bool showReplies,
  }) = _ReplyButtonState;
}
