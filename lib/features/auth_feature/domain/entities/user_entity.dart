import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required int id,
    required String fullName,
    required String username,
    required String email,
    required String phone,
    required String gender,
    required String dateOfBirth,
    String? bio,
    String? profileImage,
    required String userType,
    required String token,
    bool? isFollowing,
  }) = _UserEntity;
}
