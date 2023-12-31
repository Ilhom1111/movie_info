// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailsImpl _$$DetailsImplFromJson(Map<String, dynamic> json) =>
    _$DetailsImpl(
      adult: json['adult'] as bool,
      backdrop_path: json['backdrop_path'] as String?,
      belongs_to_collection: json['belongs_to_collection'] == null
          ? null
          : BelongsToCollection.fromJson(
              json['belongs_to_collection'] as Map<String, dynamic>),
      budget: json['budget'] as num,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      homepage: json['homepage'] as String,
      id: json['id'] as int,
      imdb_id: json['imdb_id'] as String?,
      original_language: json['original_language'] as String,
      original_title: json['original_title'] as String,
      overview: json['overview'] as String,
      popularity: json['popularity'] as num,
      poster_path: json['poster_path'] as String,
      production_companies: (json['production_companies'] as List<dynamic>)
          .map((e) => ProductionComp.fromJson(e as Map<String, dynamic>))
          .toList(),
      production_countries: (json['production_countries'] as List<dynamic>)
          .map((e) => ProductionIso.fromJson(e as Map<String, dynamic>))
          .toList(),
      release_date: json['release_date'] as String,
      revenue: json['revenue'] as num,
      runtime: json['runtime'] as num,
      spoken_languages: (json['spoken_languages'] as List<dynamic>)
          .map((e) => Spoken.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
      tagline: json['tagline'] as String,
      title: json['title'] as String,
      video: json['video'] as bool,
      vote_average: json['vote_average'] as num,
      vote_count: json['vote_count'] as num,
    );

Map<String, dynamic> _$$DetailsImplToJson(_$DetailsImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdrop_path,
      'belongs_to_collection': instance.belongs_to_collection,
      'budget': instance.budget,
      'genres': instance.genres,
      'homepage': instance.homepage,
      'id': instance.id,
      'imdb_id': instance.imdb_id,
      'original_language': instance.original_language,
      'original_title': instance.original_title,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.poster_path,
      'production_companies': instance.production_companies,
      'production_countries': instance.production_countries,
      'release_date': instance.release_date,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'spoken_languages': instance.spoken_languages,
      'status': instance.status,
      'tagline': instance.tagline,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.vote_average,
      'vote_count': instance.vote_count,
    };
