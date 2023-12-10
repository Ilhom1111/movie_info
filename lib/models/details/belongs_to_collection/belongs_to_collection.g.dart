// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'belongs_to_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BelongsToCollectionImpl _$$BelongsToCollectionImplFromJson(
        Map<String, dynamic> json) =>
    _$BelongsToCollectionImpl(
      id: json['id'] as num,
      name: json['name'] as String,
      poster_path: json['poster_path'] as String?,
      backdrop_path: json['backdrop_path'] as String?,
    );

Map<String, dynamic> _$$BelongsToCollectionImplToJson(
        _$BelongsToCollectionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'poster_path': instance.poster_path,
      'backdrop_path': instance.backdrop_path,
    };
