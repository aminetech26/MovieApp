part of 'movie_tabbed_bloc.dart';

abstract class MovieTabbedState extends Equatable {
  final int currentTabIndex;
  const MovieTabbedState({required this.currentTabIndex});

  @override
  List<Object> get props => [];
}

class MovieTabbedInitial extends MovieTabbedState {
  const MovieTabbedInitial({required super.currentTabIndex});
}

class MovieTabChangedState extends MovieTabbedState {
  final List<MovieModel> moviesList;
  const MovieTabChangedState({required this.moviesList,required super.currentTabIndex});
  @override
  List<Object> get props => [moviesList];
}

class MovieTabChangedError extends MovieTabbedState {
  const MovieTabChangedError({required super.currentTabIndex});
}
