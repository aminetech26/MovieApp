import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_backdrop_event.dart';
part 'movie_backdrop_state.dart';
part 'movie_backdrop_bloc.freezed.dart';

class MovieBackdropBloc extends Bloc<MovieBackdropEvent, MovieBackdropState> {
  MovieBackdropBloc() : super(_Initial()) {
    on<MovieBackdropEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
