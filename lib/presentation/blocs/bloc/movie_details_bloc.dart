import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:state_management/data/models/movie_details_model.dart';
import 'package:state_management/di/get_it.dart';
import 'package:state_management/domain/entities/app_error.dart';
import 'package:state_management/domain/entities/movie_params.dart';
import 'package:state_management/domain/usecases/get_movie_details.dart';
import 'package:state_management/presentation/blocs/bloc/crew_bloc.dart';
import 'package:state_management/presentation/blocs/bloc/favourite_bloc.dart';
import 'package:state_management/presentation/blocs/bloc/videos_bloc.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  GetMovieDetails getMovieDetails;
  CrewBloc crewBloc;
  VideosBloc videosBloc;
  FavouriteBloc favouriteBloc;
  MovieDetailsBloc(
      {required this.getMovieDetails,
      required this.crewBloc,
      required this.videosBloc,
      required this.favouriteBloc})
      : super(MovieDetailsInitial()) {
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

        favouriteBloc.add(CheckIfFavouriteMovieEvent(event.movieId));
        log('done');
        crewBloc.add(LoadCrewEvent(event.movieId));
        videosBloc.add(LoadVideosEvent(event.movieId));
        
      }
    });
  }
}
