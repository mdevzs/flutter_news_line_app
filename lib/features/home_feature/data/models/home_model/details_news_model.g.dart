// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailsNewsModelImpl _$$DetailsNewsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailsNewsModelImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      coverImage: json['coverImage'] as String?,
      readTime: json['readTime'] as String,
      viewsCount: json['viewsCount'] as String,
      description: json['description'] as String?,
      isTrending: json['isTrending'] as bool,
      creatorId: json['creatorId'] as int,
      createdAt: json['createdAt'] as String,
      commentsCount: json['commentsCount'] as int,
      tagNews: (json['tagNews'] as List<dynamic>?)
          ?.map((e) => DetailNewsTagModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      creator: CreatorModel.fromJson(json['creator'] as Map<String, dynamic>),
      comments: GetAllCommentsModel.fromJson(
          json['comments'] as Map<String, dynamic>),
      userNews: (json['userNews'] as List<dynamic>?)
          ?.map((e) => NewsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DetailsNewsModelImplToJson(
        _$DetailsNewsModelImpl instance) =>
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
      'commentsCount': instance.commentsCount,
      'tagNews': instance.tagNews,
      'creator': instance.creator,
      'comments': instance.comments,
      'userNews': instance.userNews,
    };
