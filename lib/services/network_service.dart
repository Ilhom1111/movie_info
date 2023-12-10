import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:movie_info/models/movie_videos/movie_videos.dart';
import 'package:movie_info/models/popular/popular.dart';

import '../core/apis.dart';
import '../models/details/details.dart';
import '../models/now_playing_model/now_playing.dart';

sealed class NetworkService {
  static Future<String?> newPlayingGet({int page = 1}) async {
    try {
      final url =
          Uri.parse("${Api.newPlayingApi}$page=$page&api_key=${Api.apiKey}");
      final response = await http.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("categoriesGet");
        return utf8.decoder.convert(response.bodyBytes).toString();
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  static Future<String?> detailsGet({required int id}) async {
    try {
      final url = Uri.parse("${Api.detailsApi}$id?api_key=${Api.apiKey}");
      final response = await http.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("detailsGet");
        return utf8.decoder.convert(response.bodyBytes).toString();
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  static Future<String?> popularGet({int page = 1}) async {
    try {
      final url =
          Uri.parse("${Api.popularApi}?page=$page&api_key=${Api.apiKey}");
      final response = await http.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("popularGet");
        return utf8.decoder.convert(response.bodyBytes).toString();
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  static Future<String?> topRatedGet({int page = 1}) async {
    try {
      final url =
          Uri.parse("${Api.topratedApi}?page=$page&api_key=${Api.apiKey}");
      final response = await http.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("topRatedGet");
        return utf8.decoder.convert(response.bodyBytes).toString();
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  static Future<String?> upComingGet({int page = 1}) async {
    try {
      final url =
          Uri.parse("${Api.upcomingApi}?page=$page&api_key=${Api.apiKey}");
      final response = await http.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("upComingGet");
        return utf8.decoder.convert(response.bodyBytes).toString();
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  static Future<String?> searchGet(
      {int page = 1, required String queriy}) async {
    try {
      final url =
          Uri.parse("${Api.searchApi}$queriy&page=$page&api_key=${Api.apiKey}");
      final response = await http.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("searchGet");
        return utf8.decoder.convert(response.bodyBytes).toString();
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  static Future<String?> movieVideosGet({required int id}) async {
    try {
      final url = Uri.parse("${Api.videosApi}$id/videos?api_key=${Api.apiKey}");
      final response = await http.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("searchGet");
        return utf8.decoder.convert(response.bodyBytes).toString();
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  static NowPlaying parseNewPlaying(String data) {
    final json = jsonDecode(data);
    final nowPlayingData = NowPlaying.fromJson(json);
    return nowPlayingData;
  }

  static Details? parseDetails(String? data) {
    if (data != null) {
      final json = jsonDecode(data);
      final detailsData = Details.fromJson(json);
      return detailsData;
    } else {
      return null;
    }
  }

  static PopularModel parsePopular(String data) {
    final json = jsonDecode(data);
    final popularData = PopularModel.fromJson(json);
    return popularData;
  }

  static MovieVideos parseMovieVideos(String data) {
    final json = jsonDecode(data);
    final movieVideos = MovieVideos.fromJson(json);
    return movieVideos;
  }
}
