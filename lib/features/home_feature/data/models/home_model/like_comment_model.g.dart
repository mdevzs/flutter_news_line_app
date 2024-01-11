// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LikeCommentModelImpl _$$LikeCommentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LikeCommentModelImpl(
      commentId: json['commentId'] as int,
      userId: json['userId'] as int,
      likeCounts: json['likeCounts'] as int,
    );

Map<String, dynamic> _$$LikeCommentModelImplToJson(
        _$LikeCommentModelImpl instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'userId': instance.userId,
      'likeCounts': instance.likeCounts,
    };
