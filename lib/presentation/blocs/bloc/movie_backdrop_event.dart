part of 'movie_backdrop_bloc.dart';

abstract class MovieBackdropEvent extends Equatable {
  const MovieBackdropEvent();

  @override
  List<Object> get props => [];
}

class MovieBackdropChangedEvent extends MovieBackdropEvent {
  final MovieModel currentMovie;
  const MovieBackdropChangedEvent(this.currentMovie);

  @override
  List<Object> get props => [currentMovie];
}
