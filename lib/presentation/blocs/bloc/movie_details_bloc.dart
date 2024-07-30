import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:state_management/data/models/movie_details_model.dart';
import 'package:state_management/di/get_it.dart';
import 'package:state_management/domain/entities/app_error.dart';
import 'package:state_management/domain/entities/movie_params.dart';
import 'package:state_management/domain/usecases/get_movie_details.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  GetMovieDetails getMovieDetails;
  MovieDetailsBloc({required this.getMovieDetails}) : super(MovieDetailsInitial()) {
    on<MovieDetailsEvent>((event, emit) async {
      getMovieDetails = getItInstance<GetMovieDetails>();
      if (event is MovieDetailsLoad) {
        Either<AppError, MovieDetailsModel> movieDetailsEither =
            await getMovieDetails(MovieParams(movieId: event.movieId));
        movieDetailsEither.fold((l) {
          emit(MovieDetailsLoadingError(errorType: l.errorType));
        }, (movieDetails) {
          emit(MovieDetailsLoaded(movieDetails: movieDetails));
        });
      }
    });
  }
}