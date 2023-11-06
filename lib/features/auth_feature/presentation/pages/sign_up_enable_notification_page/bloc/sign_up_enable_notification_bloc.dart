import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_enable_notification_event.dart';
part 'sign_up_enable_notification_state.dart';
part 'sign_up_enable_notification_bloc.freezed.dart';

class SignUpEnableNotificationBloc
    extends Bloc<SignUpEnableNotificationEvent, SignUpEnableNotificationState> {
  SignUpEnableNotificationBloc()
      : super(SignUpEnableNotificationState(
            selectedNotifications: [0, 1, 2, 3, 4, 5, 6, 7, 8])) {
    on<SignUpEnableNotificationEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
        toggleSwitch: (index) => _toggleSwitch(emit, index),
      );
    });
  }

  void _toggleSwitch(Emitter<SignUpEnableNotificationState> emit,
      int selectedNotificationIndex) {
    final slNotification = state.selectedNotifications;
    if (slNotification.contains(selectedNotificationIndex)) {
      slNotification.remove(selectedNotificationIndex);
      emit(state.copyWith(
        selectedNotifications: slNotification,
      ));
    } else {
      emit(state.copyWith(selectedNotifications: [
        ...slNotification,
        selectedNotificationIndex
      ]));
    }
  }
}
