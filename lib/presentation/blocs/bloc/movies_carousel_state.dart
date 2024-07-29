// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'movies_carousel_bloc.dart';

abstract class MoviesCarouselState extends Equatable {
  const MoviesCarouselState();
  @override
  List<Object?> get props => [];
}

class MovieCarouselInitial extends MoviesCarouselState {}

class MovieCarouselError extends MoviesCarouselState {
  final AppErrorType errorType;
  const MovieCarouselError({
    required this.errorType,
  });
}

class MovieCarouselLoaded extends MoviesCarouselState {
  final List<MovieModel> moviesList;
  final int defaultIndex;
  const MovieCarouselLoaded({required this.moviesList, this.defaultIndex = 0});
  @override
  List<Object?> get props => [moviesList, defaultIndex];
}
