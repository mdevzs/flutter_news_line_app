part of 'sign_up_enable_notification_bloc.dart';

@freezed
class SignUpEnableNotificationEvent with _$SignUpEnableNotificationEvent {
  const factory SignUpEnableNotificationEvent.toggleSwitch(int index) = _ToggleSwitch;
}