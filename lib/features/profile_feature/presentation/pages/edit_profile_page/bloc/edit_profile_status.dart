import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_status.freezed.dart';

@freezed
class EditProfileStatus with _$EditProfileStatus {
  const factory EditProfileStatus.initial() = _EditProfileStatusInitial;
  const factory EditProfileStatus.loading() = EditProfileStatusLoading;
  const factory EditProfileStatus.success() =
      _EditProfileStatusSuccess;
  const factory EditProfileStatus.error(String message) = _EditProfileStatusError;
}
