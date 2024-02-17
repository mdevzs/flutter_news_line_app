import 'dart:io';

class EditProfileParams {
  final String? fullName, username, bio, website;
  final File? imageFile;
  EditProfileParams({
    this.fullName,
    this.username,
    this.bio,
    this.website,
    this.imageFile,
  });
}
