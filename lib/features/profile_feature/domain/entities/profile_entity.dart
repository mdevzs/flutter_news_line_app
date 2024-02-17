import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_entity.dart';

part 'profile_entity.freezed.dart';

@freezed
class ProfileEntity with _$ProfileEntity {
  const factory ProfileEntity({
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
    required List<NewsEntity> userNews,
  }) = _ProfileEntity;
}
