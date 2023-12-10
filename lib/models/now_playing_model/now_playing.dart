import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_info/models/now_playing_model/dates/dates.dart';
import 'package:movie_info/models/now_playing_model/results/results.dart';
part 'now_playing.freezed.dart';
part 'now_playing.g.dart';

@freezed
class NowPlaying with _$NowPlaying {
  const factory NowPlaying({
    required Dates dates,
    required int page,
    required List<Results> results,
    required int total_pages,
    required int total_results,
  }) = _NowPlaying;

  factory NowPlaying.fromJson(Map<String, dynamic> json) =>
      _$NowPlayingFromJson(json);
}
