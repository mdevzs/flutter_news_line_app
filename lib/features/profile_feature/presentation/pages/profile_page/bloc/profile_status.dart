import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/profile_entity.dart';

part 'profile_status.freezed.dart';

@freezed
class ProfileStatus with _$ProfileStatus {
  const factory ProfileStatus.loading() = _ProfileStatusLoading;
  const factory ProfileStatus.success(ProfileEntity profileEntity) =
      ProfileStatusSuccess;
  const factory ProfileStatus.error(String message) = _ProfileStatusError;
}
