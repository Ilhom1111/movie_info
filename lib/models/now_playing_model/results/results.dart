import 'package:freezed_annotation/freezed_annotation.dart';
part 'results.freezed.dart';
part 'results.g.dart';

@freezed
class Results with _$Results {
  const factory Results({
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
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}
