part of 'favourite_bloc.dart';

abstract class FavouriteEvent extends Equatable {
  const FavouriteEvent();

  @override
  List<Object> get props => [];
}


class LoadFavouriteMovies extends FavouriteEvent {}

class DeleteFavouriteMovieEvent extends FavouriteEvent {
  final int movieId;

  const DeleteFavouriteMovieEvent(this.movieId);

  @override
  List<Object> get props => [movieId];
}

class ToggleFavouriteMovie extends FavouriteEvent {
  final MovieModel movie;
  final bool isFavourite;

  const ToggleFavouriteMovie(this.movie,this.isFavourite);

  @override
  List<Object> get props => [movie,isFavourite];
}

class CheckIfFavouriteMovieEvent extends FavouriteEvent {
  final int movieId;

  const CheckIfFavouriteMovieEvent(this.movieId);

  @override
  List<Object> get props => [movieId];
}
