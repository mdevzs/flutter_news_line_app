import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/home_feature/data/models/home_model/news_model.dart';

import '../../../home_feature/domain/entities/home_entity/news_entity.dart';
import '../../domain/entities/profile_entity.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
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
    required int storiesCount,
    required int followersCount,
    required int followingCount,
    required bool isFollowing,
    required List<NewsModel> userNews,
  }) = _ProfileModel;

  const ProfileModel._();

  factory ProfileModel.fromJson(Map<String, Object?> json) =>
      _$ProfileModelFromJson(json);

  ProfileEntity toEntity() {
    List<NewsEntity> newsEntity = [];
    for (final news in userNews) {
      newsEntity.add(news.toEntity());
    }
    return ProfileEntity(
      id: id,
      fullName: fullName,
      username: username,
      email: email,
      phone: phone,
      gender: gender,
      dateOfBirth: dateOfBirth,
      userType: userType,
      bio: bio,
      profileImage: profileImage,
      storiesCount: storiesCount,
      followersCount: followersCount,
      followingCount: followingCount,
      isFollowing: isFollowing,
      userNews: newsEntity,
    );
  }
}
