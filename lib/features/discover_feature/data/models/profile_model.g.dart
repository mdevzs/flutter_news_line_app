// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      id: json['id'] as int,
      fullName: json['fullName'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      gender: json['gender'] as String,
      dateOfBirth: json['dateOfBirth'] as String,
      bio: json['bio'] as String?,
      profileImage: json['profileImage'] as String?,
      userType: json['userType'] as String,
      storiesCount: json['storiesCount'] as int,
      followersCount: json['followersCount'] as int,
      followingCount: json['followingCount'] as int,
      isFollowing: json['isFollowing'] as bool,
      userNews: (json['userNews'] as List<dynamic>)
          .map((e) => NewsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'gender': instance.gender,
      'dateOfBirth': instance.dateOfBirth,
      'bio': instance.bio,
      'profileImage': instance.profileImage,
      'userType': instance.userType,
      'storiesCount': instance.storiesCount,
      'followersCount': instance.followersCount,
      'followingCount': instance.followingCount,
      'isFollowing': instance.isFollowing,
      'userNews': instance.userNews,
    };
