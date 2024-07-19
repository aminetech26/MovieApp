part of 'movie_tabbed_bloc.dart';

abstract class MovieTabbedState extends Equatable {
  final int? currentTabIndex;
  const MovieTabbedState({this.currentTabIndex});

  @override
  List<Object> get props => [];
}

class MovieTabbedInitial extends MovieTabbedState {}

class MovieTabChangedState extends MovieTabbedState {
  final List<MovieModel> moviesList;
  const MovieTabChangedState({required this.moviesList});
  @override
  List<Object> get props => [moviesList];
}

class MovieTabChangedError extends MovieTabbedState {}
