import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/user_entity.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
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
    String? token,
  }) = _UserModel;

  const UserModel._();

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);

  UserEntity toEntity() => UserEntity(
        id: id,
        fullName: fullName,
        username: username,
        email: email,
        phone: phone,
        gender: gender,
        bio: bio,
        profileImage: profileImage,
        dateOfBirth: dateOfBirth,
        userType: userType,
        token: token ?? '',
      );
}
