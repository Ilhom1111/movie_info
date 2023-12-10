import 'package:flutter/foundation.dart';
import 'package:test/test.dart';
import 'package:movie_info/services/network_service.dart';

void main() {
  group('Model Test', () {
    test("New Playing test", () async {
      //*page max 236
      String? data = await NetworkService.newPlayingGet(page: 1);
      final products = NetworkService.parseNewPlaying(data!);
      debugPrint(products.results[0].original_title.toString());
    });
    test("Details test", () async {
      String? data = await NetworkService.detailsGet(id: 1137047);
      final detail = NetworkService.parseDetails(data!);
      debugPrint(detail?.tagline.toString());
    });
    test("Popular test", () async {
      //*page max 500
      String? data = await NetworkService.popularGet(page: 500);
      final popular = NetworkService.parsePopular(data!);
      debugPrint(popular.total_pages.toString());
    });
    test("Top rated test", () async {
      //*page max 449
      String? data = await NetworkService.topRatedGet(page: 500);
      final toprated = NetworkService.parsePopular(data!);
      debugPrint(toprated.total_pages.toString());
    });
    test("Up Coming test", () async {
      //*page max 36
      String? data = await NetworkService.upComingGet(page: 36);
      final upComing = NetworkService.parseNewPlaying(data!);
      debugPrint(upComing.total_pages.toString());
    });

    test("Search test", () async {
      String? data = await NetworkService.searchGet(queriy: "iron man");
      final search = NetworkService.parsePopular(data!);
      debugPrint(search.total_pages.toString());
    });

    test("Movie Videos test", () async {
      String? data = await NetworkService.movieVideosGet(id: 1075794);
      final movieVideos = NetworkService.parseMovieVideos(data!);
      debugPrint(movieVideos.results[0].name.toString());
    });

    test("All test", () async {
      //*page max 36
      String? data1 = await NetworkService.upComingGet(page: 36);
      debugPrint("1");
      String? data2 = await NetworkService.newPlayingGet(page: 1);
      debugPrint("2");
      String? data3 = await NetworkService.popularGet(page: 5);
      debugPrint("3");
      String? data4 = await NetworkService.topRatedGet(page: 1);
      debugPrint("4");
      final upComing = NetworkService.parseNewPlaying(data1!);
      final newPlaying = NetworkService.parseNewPlaying(data2!);
      final popular = NetworkService.parsePopular(data3!);
      final toprated = NetworkService.parsePopular(data4!);
      debugPrint(upComing.total_pages.toString());
      debugPrint(newPlaying.total_pages.toString());
      debugPrint(popular.total_pages.toString());
      debugPrint(toprated.total_pages.toString());
    });
  });
}
