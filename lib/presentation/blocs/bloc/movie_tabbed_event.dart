part of 'movie_tabbed_bloc.dart';

abstract class MovieTabbedEvent extends Equatable {
  const MovieTabbedEvent();

  @override
  List<Object> get props => [];
}

class MovieTabChangedEvent extends MovieTabbedEvent {
  final List<MovieModel> moviesList;
  final int currentTabIndex;
  const MovieTabChangedEvent({required this.moviesList, required this.currentTabIndex});
  @override
  List<Object> get props => [moviesList,currentTabIndex];
}
