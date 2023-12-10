// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'now_playing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NowPlayingImpl _$$NowPlayingImplFromJson(Map<String, dynamic> json) =>
    _$NowPlayingImpl(
      dates: Dates.fromJson(json['dates'] as Map<String, dynamic>),
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
      total_pages: json['total_pages'] as int,
      total_results: json['total_results'] as int,
    );

Map<String, dynamic> _$$NowPlayingImplToJson(_$NowPlayingImpl instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.total_pages,
      'total_results': instance.total_results,
    };
