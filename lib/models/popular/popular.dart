import 'package:freezed_annotation/freezed_annotation.dart';

import 'results/results.dart';
part 'popular.freezed.dart';
part 'popular.g.dart';

@freezed
class PopularModel with _$PopularModel {
  const factory PopularModel({
    required num page,
    required List<ResultsPopular> results,
    required num total_pages,
    required num total_results,
  }) = _PopularModel;

  factory PopularModel.fromJson(Map<String, Object?> json) =>
      _$PopularModelFromJson(json);
}
