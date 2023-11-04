// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tags_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TagsModelImpl _$$TagsModelImplFromJson(Map<String, dynamic> json) =>
    _$TagsModelImpl(
      id: json['id'] as int,
      tag: json['tag'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$TagsModelImplToJson(_$TagsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tag': instance.tag,
      'imageUrl': instance.imageUrl,
    };
