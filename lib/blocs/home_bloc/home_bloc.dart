import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import '../../models/hive_model/hive_favorite_model.dart';
import '../../models/now_playing_model/now_playing.dart';
import '../../models/popular/popular.dart';
import '../../services/hive.dart';
import '../../services/network_service.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeParsEvent>(_parseHome);
    on<PopularParsEvent>(_parsePopular);
    on<TopRatedParsEvent>(_parseTopRated);
    on<UpComingParsEvent>(_parseUpComing);
    on<SearchParsEvent>(_parseSearch);
    on<FavoriteCountParsEvent>(_parseFavoriteCount);
  }

  void _parseHome(HomeParsEvent event, Emitter emit) async {
    List<HiveFavoriteModel> favorite =
        HiveCustom.myFavorite.values.toList().cast();
    if (favorite.length > 9) {
      emit(const FavoriteCountSuccess(count: "9+"));
    } else {
      emit(FavoriteCountSuccess(count: favorite.length.toString()));
    }

    emit(HomeLoading());
    String? data1 = await NetworkService.upComingGet(page: 1);
    debugPrint("1");
    String? data2 = await NetworkService.newPlayingGet(page: 1);
    debugPrint("2");
    String? data3 = await NetworkService.popularGet(page: 1);
    debugPrint("3");
    String? data4 = await NetworkService.topRatedGet(page: 1);
    debugPrint("4");
    NowPlaying upComing = NetworkService.parseNewPlaying(data1!);
    NowPlaying newPlaying = NetworkService.parseNewPlaying(data2!);
    PopularModel popular = NetworkService.parsePopular(data3!);
    PopularModel toprated = NetworkService.parsePopular(data4!);
    if (data1.isNotEmpty) {
      if (newPlaying.results.isNotEmpty) {
        emit(CreateHomeSuccess(
          newPlaying: newPlaying,
          upComing: upComing,
          popular: popular,
          toprated: toprated,
        ));
      } else {
        emit(const HomeFailure(
            "Please check the internet. Could not connect to the network!"));
      }
    } else {
      emit(const HomeFailure(
          "Please check the internet. Could not connect to the network!"));
    }
  }

  void _parsePopular(PopularParsEvent event, Emitter emit) async {
    emit(HomeLoading());
    String? data = await NetworkService.popularGet(page: event.page);
    PopularModel popular = NetworkService.parsePopular(data!);
    if (popular.results.isNotEmpty) {
      emit(CreatePopularSuccess(popular: popular));
    } else {
      emit(const HomeFailure(
          "Please check the internet. Could not connect to the network!"));
    }
  }

  void _parseUpComing(UpComingParsEvent event, Emitter emit) async {
    emit(HomeLoading());
    String? data = await NetworkService.upComingGet(page: event.page);
    NowPlaying upComing = NetworkService.parseNewPlaying(data!);
    if (upComing.results.isNotEmpty) {
      emit(CreateUpComingSuccess(upComing: upComing));
    } else {
      emit(const HomeFailure(
          "Please check the internet. Could not connect to the network!"));
    }
  }

  void _parseTopRated(TopRatedParsEvent event, Emitter emit) async {
    emit(HomeLoading());
    String? data = await NetworkService.topRatedGet(page: event.page);
    PopularModel toprated = NetworkService.parsePopular(data!);
    if (toprated.results.isNotEmpty) {
      emit(CreateTopRatedSuccess(toprated: toprated));
    } else {
      emit(const HomeFailure(
          "Please check the internet. Could not connect to the network!"));
    }
  }

  void _parseSearch(SearchParsEvent event, Emitter emit) async {
    emit(HomeLoading());
    String? data =
        await NetworkService.searchGet(page: event.page, queriy: event.queriy);
    PopularModel search = NetworkService.parsePopular(data!);
    if (search.results.isNotEmpty) {
      emit(CreateSearchSuccess(search: search));
    } else {
      emit(const HomeFailure("Sorry, nothing found!!"));
    }
  }

  void _parseFavoriteCount(FavoriteCountParsEvent event, Emitter emit) async {
    List<HiveFavoriteModel> favorite =
        HiveCustom.myFavorite.values.toList().cast();
    if (favorite.length <= 9) {
      if (favorite.length == 9) {
        emit(FavoriteCountSuccess(count: "${favorite.length}"));
      } else {
        emit(FavoriteCountSuccess(count: favorite.length.toString()));
      }
    } else {
      emit(const FavoriteCountSuccess(count: "9+"));
    }
  }
}
