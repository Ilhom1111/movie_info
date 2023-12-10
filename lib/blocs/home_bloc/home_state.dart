part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeLoading extends HomeState {
  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {
  @override
  List<Object> get props => [];
}

class HomeFailure extends HomeState {
  final String message;

  const HomeFailure(this.message);
  @override
  List<Object> get props => [message];
}

class CreateHomeSuccess extends HomeState {
  final NowPlaying newPlaying;
  final NowPlaying upComing;
  final PopularModel popular;
  final PopularModel toprated;
  const CreateHomeSuccess({
    required this.upComing,
    required this.popular,
    required this.toprated,
    required this.newPlaying,
  });
  @override
  List<Object> get props => [newPlaying, upComing, popular, toprated];
}

class CreatePopularSuccess extends HomeState {
  final PopularModel popular;

  const CreatePopularSuccess({
    required this.popular,
  });
  @override
  List<Object> get props => [popular];
}

class CreateUpComingSuccess extends HomeState {
  final NowPlaying upComing;

  const CreateUpComingSuccess({
    required this.upComing,
  });
  @override
  List<Object> get props => [upComing];
}

class CreateTopRatedSuccess extends HomeState {
  final PopularModel toprated;

  const CreateTopRatedSuccess({
    required this.toprated,
  });
  @override
  List<Object> get props => [toprated];
}

class CreateSearchSuccess extends HomeState {
  final PopularModel search;

  const CreateSearchSuccess({
    required this.search,
  });
  @override
  List<Object> get props => [search];
}

class FavoriteCountSuccess extends HomeState {
  final String count;
  const FavoriteCountSuccess({
    required this.count,
  });
  @override
  List<Object> get props => [count];
}
