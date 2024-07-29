import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_management/data/models/movie_model.dart';
import 'package:state_management/domain/entities/app_error.dart';
import 'package:state_management/domain/entities/no_params.dart';
import 'package:state_management/domain/usecases/get_trending.dart';
import 'package:state_management/presentation/blocs/bloc/movie_backdrop_bloc.dart';

part 'movies_carousel_event.dart';
part 'movies_carousel_state.dart';

class MoviesCarouselBloc
    extends Bloc<MoviesCarouselEvent, MoviesCarouselState> {
  final GetTrending getTrending;
  final MovieBackdropBloc movieBackdropBloc;
  MoviesCarouselBloc(
      {required this.getTrending, required this.movieBackdropBloc})
      : super(MovieCarouselInitial()) {
    on<MoviesCarouselEvent>((event, emit) async {
      if (event is CarouselLoadEvent) {
        final moviesEither = await getTrending(NoParams());
        moviesEither.fold((l) {
          emit(MovieCarouselError(errorType: l.errorType));
        }, (movies) {
          movieBackdropBloc
              .add(MovieBackdropChangedEvent(movies[event.defaultIndex]));
          emit(MovieCarouselLoaded(
              moviesList: movies, defaultIndex: event.defaultIndex));
        });
      }
    });
  }
}
