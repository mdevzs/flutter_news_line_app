part of 'reply_button_bloc.dart';

@freezed
class ReplyButtonEvent with _$ReplyButtonEvent {
  const factory ReplyButtonEvent.toggleShowReplies() = _ToggleShowReplies;
}
