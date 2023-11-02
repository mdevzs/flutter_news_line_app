// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_meta_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountriesMetaModelImpl _$$CountriesMetaModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CountriesMetaModelImpl(
      total: json['total'] as int?,
      lastPage: json['lastPage'] as int?,
      currentPage: json['currentPage'] as int?,
      perPage: json['perPage'] as int?,
      prev: json['prev'] as int?,
      next: json['next'] as int?,
    );

Map<String, dynamic> _$$CountriesMetaModelImplToJson(
        _$CountriesMetaModelImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'lastPage': instance.lastPage,
      'currentPage': instance.currentPage,
      'perPage': instance.perPage,
      'prev': instance.prev,
      'next': instance.next,
    };
