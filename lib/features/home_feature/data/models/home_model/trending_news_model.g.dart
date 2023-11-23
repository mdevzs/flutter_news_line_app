// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrendingNewsModelImpl _$$TrendingNewsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TrendingNewsModelImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => NewsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TrendingNewsModelImplToJson(
        _$TrendingNewsModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
