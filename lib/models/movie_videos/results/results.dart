import 'package:freezed_annotation/freezed_annotation.dart';
part 'results.freezed.dart';
part 'results.g.dart';

@freezed
class Results with _$Results {
  const factory Results({
    required String iso_639_1,
    required String iso_3166_1,
    required String name,
    required String key,
    required String site,
    required int size,
    required String type,
    required bool official,
    required String published_at,
    required String id,
  }) = _Results;

  factory Results.fromJson(Map<String, Object?> json) =>
      _$ResultsFromJson(json);
}
