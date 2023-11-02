// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountriesModelImpl _$$CountriesModelImplFromJson(Map<String, dynamic> json) =>
    _$CountriesModelImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => CountriesDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: CountriesMetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CountriesModelImplToJson(
        _$CountriesModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
