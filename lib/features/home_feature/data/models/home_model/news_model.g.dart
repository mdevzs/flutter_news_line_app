// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsModelImpl _$$NewsModelImplFromJson(Map<String, dynamic> json) =>
    _$NewsModelImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      coverImage: json['coverImage'] as String?,
      readTime: json['readTime'] as String,
      viewsCount: json['viewsCount'] as String,
      description: json['description'] as String?,
      isTrending: json['isTrending'] as bool,
      creatorId: json['creatorId'] as int,
      createdAt: json['createdAt'] as String,
      commentCounts: json['commentCounts'] as int,
      tagNews: (json['tagNews'] as List<dynamic>?)
          ?.map((e) => TagNewsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      creator: CreatorModel.fromJson(json['creator'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewsModelImplToJson(_$NewsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'coverImage': instance.coverImage,
      'readTime': instance.readTime,
      'viewsCount': instance.viewsCount,
      'description': instance.description,
      'isTrending': instance.isTrending,
      'creatorId': instance.creatorId,
      'createdAt': instance.createdAt,
      'commentCounts': instance.commentCounts,
      'tagNews': instance.tagNews,
      'creator': instance.creator,
    };
