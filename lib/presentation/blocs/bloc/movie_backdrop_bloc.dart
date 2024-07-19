import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:state_management/data/models/movie_model.dart';

part 'movie_backdrop_event.dart';
part 'movie_backdrop_state.dart';

class MovieBackdropBloc extends Bloc<MovieBackdropEvent, MovieBackdropState> {
  MovieBackdropBloc() : super(MovieBackdropInitial()) {
    on<MovieBackdropEvent>((event, emit) async{
      if (event is MovieBackdropChangedEvent){
        emit( MovieBackdropChanged(event.currentMovie));
      }
    });
  }
}
