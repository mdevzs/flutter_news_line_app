
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/user_entity.dart';

part 'create_profile_state.freezed.dart';

@freezed
class CreateProfileState with _$CreateProfileState {
  const factory CreateProfileState.success(UserEntity user) = _CreateProfileSuccess;
  const factory CreateProfileState.error(String message) = _CreateProfileError;
}
