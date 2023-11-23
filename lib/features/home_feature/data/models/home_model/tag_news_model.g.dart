// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TagNewsModelImpl _$$TagNewsModelImplFromJson(Map<String, dynamic> json) =>
    _$TagNewsModelImpl(
      tagNews: (json['tagNews'] as List<dynamic>?)
          ?.map((e) => TagModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TagNewsModelImplToJson(_$TagNewsModelImpl instance) =>
    <String, dynamic>{
      'tagNews': instance.tagNews,
    };
