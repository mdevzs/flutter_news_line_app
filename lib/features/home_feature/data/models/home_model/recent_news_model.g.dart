// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecentNewsModelImpl _$$RecentNewsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RecentNewsModelImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => NewsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RecentNewsModelImplToJson(
        _$RecentNewsModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
