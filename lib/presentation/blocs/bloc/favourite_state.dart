part of 'favourite_bloc.dart';

abstract class FavouriteState extends Equatable {
  const FavouriteState();
  
  @override
  List<Object> get props => [];
}

class FavouriteInitial extends FavouriteState {}

class FavouriteLoading extends FavouriteState {}

class FavouriteLoaded extends FavouriteState {
  final List<MovieTable> movies;

  const FavouriteLoaded(this.movies);

  @override
  List<Object> get props => [movies];
}

class FavouriteLoadingError extends FavouriteState {
  final AppErrorType errorType;

  const FavouriteLoadingError(this.errorType);

  @override
  List<Object> get props => [errorType];
}

class IsMovieFavourite extends FavouriteState {
  final bool isFavourite;

  const IsMovieFavourite({this.isFavourite = false});

  @override
  List<Object> get props => [isFavourite];
}

class FavouriteMovieDeleted extends FavouriteState {
  final int movieId;

  const FavouriteMovieDeleted(this.movieId);

  @override
  List<Object> get props => [movieId];
}
