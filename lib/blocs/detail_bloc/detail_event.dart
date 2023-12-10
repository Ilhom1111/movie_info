part of 'detail_bloc.dart';

abstract class DetailEvent extends Equatable {
  const DetailEvent();
}

class DetailParsEvent extends DetailEvent {
  final int id;
  const DetailParsEvent(this.id);

  @override
  List<Object?> get props => [id];
}

class VideosParsEvent extends DetailEvent {
  final int movieId;
  const VideosParsEvent(this.movieId);

  @override
  List<Object?> get props => [movieId];
}

class FavoriteParsEvent extends DetailEvent {
  final String imageUrl;
  final String titl;
  final String reting;
  final String id;
  const FavoriteParsEvent(
      {required this.imageUrl,
      required this.titl,
      required this.reting,
      required this.id});

  @override
  List<Object?> get props => [imageUrl, titl, reting, id];
}
