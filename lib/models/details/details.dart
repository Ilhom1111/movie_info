import 'package:freezed_annotation/freezed_annotation.dart';

import 'belongs_to_collection/belongs_to_collection.dart';
import 'genres/genre_model.dart';
import 'production_companies/production_comp.dart';
import 'production_iso/production_iso.dart';
import 'spoken_languages/spoken.dart';
part 'details.freezed.dart';
part 'details.g.dart';

@freezed
class Details with _$Details {
  const factory Details({
    required bool adult,
    required String? backdrop_path,
    required BelongsToCollection? belongs_to_collection,
    required num budget,
    required List<GenreModel> genres,
    required String homepage,
    required int id,
    required String? imdb_id,
    required String original_language,
    required String original_title,
    required String overview,
    required num popularity,
    required String poster_path,
    required List<ProductionComp> production_companies,
    required List<ProductionIso> production_countries,
    required String release_date,
    required num revenue,
    required num runtime,
    required List<Spoken> spoken_languages,
    required String status,
    required String tagline,
    required String title,
    required bool video,
    required num vote_average,
    required num vote_count,
  }) = _Details;

  factory Details.fromJson(Map<String, Object?> json) =>
      _$DetailsFromJson(json);
}
