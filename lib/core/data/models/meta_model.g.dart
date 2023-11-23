// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetaModelImpl _$$MetaModelImplFromJson(Map<String, dynamic> json) =>
    _$MetaModelImpl(
      total: json['total'] as int?,
      lastPage: json['lastPage'] as int?,
      currentPage: json['currentPage'] as int?,
      perPage: json['perPage'] as int?,
      prev: json['prev'] as int?,
      next: json['next'] as int?,
    );

Map<String, dynamic> _$$MetaModelImplToJson(_$MetaModelImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'lastPage': instance.lastPage,
      'currentPage': instance.currentPage,
      'perPage': instance.perPage,
      'prev': instance.prev,
      'next': instance.next,
    };
