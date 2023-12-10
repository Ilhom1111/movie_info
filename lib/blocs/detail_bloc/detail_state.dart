part of 'detail_bloc.dart';

abstract class DetailState extends Equatable {
  const DetailState();
}

class DetailLoading extends DetailState {
  @override
  List<Object> get props => [];
}

class DetailInitial extends DetailState {
  @override
  List<Object> get props => [];
}

class DetailFailure extends DetailState {
  final String message;

  const DetailFailure(this.message);
  @override
  List<Object> get props => [message];
}

class CreateDetailSuccess extends DetailState {
  final Details data;
  const CreateDetailSuccess(this.data);
  @override
  List<Object> get props => [data];
}

class CreateVideosSuccess extends DetailState {
  final MovieVideos videos;
  const CreateVideosSuccess(this.videos);
  @override
  List<Object> get props => [videos];
}

class CreateFavoriteSuccess extends DetailState {
  final bool favorite;
  const CreateFavoriteSuccess(this.favorite);
  @override
  List<Object> get props => [favorite];
}
