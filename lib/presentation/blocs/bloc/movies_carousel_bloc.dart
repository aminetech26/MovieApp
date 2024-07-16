import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_management/data/models/movie_model.dart';
import 'package:state_management/domain/entities/no_params.dart';
import 'package:state_management/domain/usecases/get_trending.dart';

part 'movies_carousel_event.dart';
part 'movies_carousel_state.dart';

class MoviesCarouselBloc
    extends Bloc<MoviesCarouselEvent, MoviesCarouselState> {
  final GetTrending getTrending;
  MoviesCarouselBloc({required this.getTrending})
      : super(MovieCarouselInitial()) {
    on<MoviesCarouselEvent>((event, emit) async {
      if (event is CarouselLoadEvent) {
        final moviesEither = await getTrending(NoParams());
        moviesEither.fold((l) {
          emit(MovieCarouselError());
        }, (movies) {
          emit(MovieCarouselLoaded(
            moviesList: movies, defaultIndex: event.defaultIndex));
        });
      }
    });
  }
}
