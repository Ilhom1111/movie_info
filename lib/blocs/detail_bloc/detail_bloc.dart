import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_info/models/movie_videos/movie_videos.dart';
import 'package:movie_info/services/network_service.dart';

import '../../models/details/details.dart';
import '../../models/hive_model/hive_favorite_model.dart';
import '../../services/hive.dart';

part 'detail_event.dart';
part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc() : super(DetailInitial()) {
    on<DetailParsEvent>(_parseDetail);
    on<VideosParsEvent>(_parseVideos);
    on<FavoriteParsEvent>(_parseFavorite);
  }

  void _parseDetail(DetailParsEvent event, Emitter emit) async {
    bool tf = true;
    List<HiveFavoriteModel> favorite =
        HiveCustom.myFavorite.values.toList().cast();
    emit(DetailLoading());
    final data = await NetworkService.detailsGet(id: event.id);
    Details? movieData = NetworkService.parseDetails(data);
    if (movieData != null) {
      for (var i = 0; i < favorite.length; i++) {
        if (favorite[i].id == movieData.id.toString()) {
          tf = false;
        }
      }
      if (tf == false) {
        emit(CreateFavoriteSuccess(tf));
        log(" Sinovga false");
      } else {
        log(" Sinovga true");
        emit(CreateFavoriteSuccess(tf));
      }
      emit(CreateDetailSuccess(movieData));
    } else {
      emit(const DetailFailure(
          "Please check the internet. Could not connect to the network!"));
    }
  }

  void _parseVideos(VideosParsEvent event, Emitter emit) async {
    emit(DetailLoading());
    final data = await NetworkService.movieVideosGet(id: event.movieId);
    MovieVideos? videos = NetworkService.parseMovieVideos(data!);
    if (videos.results.isNotEmpty) {
      emit(CreateVideosSuccess(videos));
    } else {
      emit(const DetailFailure(
          "Please check the internet. Could not connect to the network!"));
    }
  }

  void _parseFavorite(FavoriteParsEvent event, Emitter emit) async {
    bool tf = true;
    List<HiveFavoriteModel> favorite =
        HiveCustom.myFavorite.values.toList().cast();
    for (var i = 0; i < favorite.length; i++) {
      if (favorite[i].id == event.id) {
        HiveCustom.myFavorite.delete(HiveCustom.myFavorite.keys.toList()[i]);
        tf = false;
      }
    }
    if (tf == false) {
      emit(CreateFavoriteSuccess(tf));
      return;
    } else {
      HiveCustom.myFavorite.add(
        HiveFavoriteModel(
          imageUrl: event.imageUrl,
          title: event.titl,
          reting: event.reting,
          id: event.id,
        ),
      );
      emit(CreateFavoriteSuccess(tf));
    }
  }
}
