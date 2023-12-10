// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_videos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieVideosImpl _$$MovieVideosImplFromJson(Map<String, dynamic> json) =>
    _$MovieVideosImpl(
      id: json['id'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MovieVideosImplToJson(_$MovieVideosImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'results': instance.results,
    };
