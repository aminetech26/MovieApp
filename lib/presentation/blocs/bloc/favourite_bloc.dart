import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:state_management/data/models/movie_model.dart';
import 'package:state_management/data/tables/movie_table.dart';
import 'package:state_management/domain/entities/app_error.dart';
import 'package:state_management/domain/entities/movie_params.dart';
import 'package:state_management/domain/entities/no_params.dart';
import 'package:state_management/domain/usecases/check_if_favourite_movie.dart';
import 'package:state_management/domain/usecases/delete_favourite_movie.dart';
import 'package:state_management/domain/usecases/get_favourite_movies.dart';
import 'package:state_management/domain/usecases/save_movie.dart';

part 'favourite_event.dart';
part 'favourite_state.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  GetFavouriteMovies getFavouriteMovies;
  DeleteFavouriteMovie deleteFavouriteMovie;
  CheckIfFavouriteMovie checkIfFavouriteMovie;
  SaveMovie saveMovie;

  FavouriteBloc(
      {required this.getFavouriteMovies,
      required this.deleteFavouriteMovie,
      required this.checkIfFavouriteMovie,
      required this.saveMovie})
      : super(FavouriteInitial()) {
    on<FavouriteEvent>((event, emit) async {
      if (event is ToggleFavouriteMovie) {
        if (event.isFavourite) {
          await deleteFavouriteMovie(MovieParams(movieId: event.movie.id!));
        } else {
          await saveMovie(event.movie);
        }
        final isFavourite = await checkIfFavouriteMovie(MovieParams(movieId: event.movie.id!));
        isFavourite.fold((l) => emit(FavouriteLoadingError(l.errorType)),
            (r) => emit(IsMovieFavourite(r)));
      }

      else if(event is LoadFavouriteMovies){
        emit(FavouriteLoading());
        final movies = await getFavouriteMovies(NoParams());
        movies.fold((l) => emit(FavouriteLoadingError(l.errorType)),
            (r) => emit(FavouriteLoaded(r)));

      } else if(event is CheckIfFavouriteMovieEvent){
        final isFavourite = await checkIfFavouriteMovie(MovieParams(movieId: event.movieId));
        isFavourite.fold((l) => emit(FavouriteLoadingError(l.errorType)),
            (r) => emit(IsMovieFavourite(r)));
      }
      else if(event is DeleteFavouriteMovieEvent){
        await deleteFavouriteMovie(MovieParams(movieId: event.movieId));
        final isFavourite = await checkIfFavouriteMovie(MovieParams(movieId: event.movieId));
        isFavourite.fold((l) => emit(FavouriteLoadingError(l.errorType)),
            (r) => emit(IsMovieFavourite(r)));
      }
    }
    );
  }
}
