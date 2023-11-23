// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeModelImpl _$$HomeModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeModelImpl(
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      trendingNews: (json['trendingNews'] as List<dynamic>?)
          ?.map((e) => NewsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => TagModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      recentNews: (json['recentNews'] as List<dynamic>?)
          ?.map((e) => NewsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeModelImplToJson(_$HomeModelImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'trendingNews': instance.trendingNews,
      'tags': instance.tags,
      'recentNews': instance.recentNews,
    };
