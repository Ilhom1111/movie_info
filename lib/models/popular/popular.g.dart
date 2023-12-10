// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PopularModelImpl _$$PopularModelImplFromJson(Map<String, dynamic> json) =>
    _$PopularModelImpl(
      page: json['page'] as num,
      results: (json['results'] as List<dynamic>)
          .map((e) => ResultsPopular.fromJson(e as Map<String, dynamic>))
          .toList(),
      total_pages: json['total_pages'] as num,
      total_results: json['total_results'] as num,
    );

Map<String, dynamic> _$$PopularModelImplToJson(_$PopularModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.total_pages,
      'total_results': instance.total_results,
    };
