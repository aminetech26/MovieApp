part of 'search_bloc.dart';

abstract class SearchState extends Equatable {
  const SearchState();
  
  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}
class SearchLoadedList extends SearchState {
  final List<MovieModel> movies;
  const SearchLoadedList(this.movies);
  @override
  List<Object> get props => [movies];
}
class SearchLoadingError extends SearchState {
  final AppErrorType errorType;
  const SearchLoadingError(this.errorType);
  @override
  List<Object> get props => [errorType];
}