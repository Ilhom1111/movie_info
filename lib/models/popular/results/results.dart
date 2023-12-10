import 'package:freezed_annotation/freezed_annotation.dart';
part 'results.freezed.dart';
part 'results.g.dart';

@freezed
class ResultsPopular with _$ResultsPopular {
  const factory ResultsPopular({
    required bool adult,
    required String? backdrop_path,
    required List<int> genre_ids,
    required int id,
    required String original_language,
    required String original_title,
    required String overview,
    required double popularity,
    required String? poster_path,
    required String release_date,
    required String title,
    required bool video,
    required double vote_average,
    required int vote_count,
  }) = _ResultsPopular;

  factory ResultsPopular.fromJson(Map<String, Object?> json) =>
      _$ResultsPopularFromJson(json);
}
