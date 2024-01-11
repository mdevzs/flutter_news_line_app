import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reply_button_event.dart';
part 'reply_button_state.dart';
part 'reply_button_bloc.freezed.dart';

class ReplyButtonBloc extends Bloc<ReplyButtonEvent, ReplyButtonState> {
  ReplyButtonBloc() : super(const ReplyButtonState()) {
    on<ReplyButtonEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
        toggleShowReplies: () => _toggleShowReplies(emit),
      );
    });
  }

  void _toggleShowReplies(
    Emitter<ReplyButtonState> emit,
  ) {
    emit(
      state.copyWith(
        showReplies: !state.showReplies,
      ),
    );
  }
}
