part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class HomeParsEvent extends HomeEvent {
  const HomeParsEvent();

  @override
  List<Object?> get props => [];
}

// ignore: must_be_immutable
class PopularParsEvent extends HomeEvent {
  int page;
  PopularParsEvent({required this.page});

  @override
  List<Object?> get props => [page];
}

// ignore: must_be_immutable
class UpComingParsEvent extends HomeEvent {
  int page;
  UpComingParsEvent({required this.page});

  @override
  List<Object?> get props => [page];
}

// ignore: must_be_immutable
class TopRatedParsEvent extends HomeEvent {
  int page;
  TopRatedParsEvent({required this.page});

  @override
  List<Object?> get props => [page];
}

// ignore: must_be_immutable
class SearchParsEvent extends HomeEvent {
  int page;
  final String queriy;
  SearchParsEvent({required this.page, required this.queriy});

  @override
  List<Object?> get props => [page, queriy];
}

class FavoriteCountParsEvent extends HomeEvent {
  const FavoriteCountParsEvent();

  @override
  List<Object?> get props => [];
}
