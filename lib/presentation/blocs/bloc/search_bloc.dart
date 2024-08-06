import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:state_management/data/models/movie_model.dart';
import 'package:state_management/domain/entities/app_error.dart';
import 'package:state_management/domain/entities/movie_search_params.dart';
import 'package:state_management/domain/usecases/get_searched_movies.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  GetSearchedMovies getSearchedMovies;
  SearchBloc({required this.getSearchedMovies}) : super(SearchInitial()) {
    on<SearchEvent>((event, emit) async {
      if (event is SearchMovies) {
        final searchedMoviesEither =
            await getSearchedMovies(MovieSearchParams(query: event.query));
        searchedMoviesEither.fold(
            (error) => emit(SearchLoadingError(error.errorType)),
            (movies) => emit(SearchLoadedList(movies)));
      }
    });
  }
}
