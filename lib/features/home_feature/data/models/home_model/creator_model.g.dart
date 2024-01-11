// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatorModelImpl _$$CreatorModelImplFromJson(Map<String, dynamic> json) =>
    _$CreatorModelImpl(
      id: json['id'] as int,
      profileImage: json['profileImage'] as String?,
      fullName: json['fullName'] as String,
      bio: json['bio'] as String?,
      followersCount: json['followersCount'] as int?,
    );

Map<String, dynamic> _$$CreatorModelImplToJson(_$CreatorModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profileImage': instance.profileImage,
      'fullName': instance.fullName,
      'bio': instance.bio,
      'followersCount': instance.followersCount,
    };
