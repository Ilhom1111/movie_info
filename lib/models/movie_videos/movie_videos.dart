import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_info/models/movie_videos/results/results.dart';
part 'movie_videos.freezed.dart';
part 'movie_videos.g.dart';

@freezed
class MovieVideos with _$MovieVideos {
  const factory MovieVideos({
    required int id,
    required List<Results> results,
  }) = _MovieVideos;

  factory MovieVideos.fromJson(Map<String, Object?> json) =>
      _$MovieVideosFromJson(json);
}
