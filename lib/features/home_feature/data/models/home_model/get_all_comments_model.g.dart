// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_comments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllCommentsModelImpl _$$GetAllCommentsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAllCommentsModelImpl(
      top: (json['top'] as List<dynamic>?)
          ?.map((e) => CommentsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      newest: (json['newest'] as List<dynamic>?)
          ?.map((e) => CommentsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetAllCommentsModelImplToJson(
        _$GetAllCommentsModelImpl instance) =>
    <String, dynamic>{
      'top': instance.top,
      'newest': instance.newest,
    };
