import 'dart:io';

class SignUpParams {
  File? profileImage;
  String fullName,
      email,
      password,
      country,
      username,
      dateOfBirth,
      gender,
      phone;
  String? bio;
  List<String>? intrestedTags;
  List<String>? following;

  SignUpParams({
    this.profileImage,
    required this.fullName,
    required this.email,
    required this.password,
    required this.country,
    required this.username,
    required this.dateOfBirth,
    required this.gender,
    required this.phone,
    this.intrestedTags,
    this.following,
    this.bio,
  });
}
