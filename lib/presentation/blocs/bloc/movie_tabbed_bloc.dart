import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:state_management/data/models/movie_model.dart';
import 'package:state_management/domain/entities/app_error.dart';
import 'package:state_management/domain/entities/no_params.dart';
import 'package:state_management/domain/usecases/get_coming_soon.dart';
import 'package:state_management/domain/usecases/get_playing_now.dart';
import 'package:state_management/domain/usecases/get_popular.dart';
import 'package:state_management/domain/usecases/get_trending.dart';

part 'movie_tabbed_event.dart';
part 'movie_tabbed_state.dart';

class MovieTabbedBloc extends Bloc<MovieTabbedEvent, MovieTabbedState> {
  final GetPopular getPopular;
  final GetComingSoon getComingSoon;
  final GetPlayingNow getPlayingNow;

  MovieTabbedBloc(
      {required this.getPopular,
      required this.getComingSoon,
      required this.getPlayingNow})
      : super(MovieTabbedInitial()) {
    on<MovieTabbedEvent>((event, emit) async {
      if (event is MovieTabChangedEvent) {
        Either<AppError, List<MovieModel>>? moviesEither;
        switch (event.currentTabIndex) {
          case 0:
            moviesEither = await getPopular(NoParams());
            break;
          case 1:
            moviesEither = await getPlayingNow(NoParams());
            break;
          case 2:
            moviesEither = await getComingSoon(NoParams());
            break;
        }
        moviesEither?.fold((l) {
          emit(MovieTabChangedError());
        }, (movies) {
          emit(MovieTabChangedState(moviesList: movies));
        });
      }
    });
  }
}
