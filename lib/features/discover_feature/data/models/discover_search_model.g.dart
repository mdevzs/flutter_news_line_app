// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscoverSearchModelImpl _$$DiscoverSearchModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscoverSearchModelImpl(
      news: (json['news'] as List<dynamic>?)
          ?.map((e) => NewsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      accounts: (json['accounts'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => TagModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DiscoverSearchModelImplToJson(
        _$DiscoverSearchModelImpl instance) =>
    <String, dynamic>{
      'news': instance.news,
      'accounts': instance.accounts,
      'tags': instance.tags,
    };
