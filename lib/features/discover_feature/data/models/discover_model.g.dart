// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscoverModelImpl _$$DiscoverModelImplFromJson(Map<String, dynamic> json) =>
    _$DiscoverModelImpl(
      topNews: (json['topNews'] as List<dynamic>?)
          ?.map((e) => NewsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      popularPublishers: (json['popularPublishers'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      popularAuthors: (json['popularAuthors'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommandedNews: (json['recommandedNews'] as List<dynamic>?)
          ?.map((e) => NewsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DiscoverModelImplToJson(_$DiscoverModelImpl instance) =>
    <String, dynamic>{
      'topNews': instance.topNews,
      'popularPublishers': instance.popularPublishers,
      'popularAuthors': instance.popularAuthors,
      'recommandedNews': instance.recommandedNews,
    };
