// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentsModelImpl _$$CommentsModelImplFromJson(Map<String, dynamic> json) =>
    _$CommentsModelImpl(
      id: json['id'] as int,
      comment: json['comment'] as String,
      newsId: json['newsId'] as int,
      creatorId: json['creatorId'] as int,
      parentId: json['parentId'] as int?,
      createdAt: json['createdAt'] as String,
      creator: CreatorModel.fromJson(json['creator'] as Map<String, dynamic>),
      likeCounts: json['likeCounts'] as int,
      isLiked: json['isLiked'] as bool,
      replies: (json['replies'] as List<dynamic>?)
              ?.map((e) => CommentsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CommentsModelImplToJson(_$CommentsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'comment': instance.comment,
      'newsId': instance.newsId,
      'creatorId': instance.creatorId,
      'parentId': instance.parentId,
      'createdAt': instance.createdAt,
      'creator': instance.creator,
      'likeCounts': instance.likeCounts,
      'isLiked': instance.isLiked,
      'replies': instance.replies,
    };
