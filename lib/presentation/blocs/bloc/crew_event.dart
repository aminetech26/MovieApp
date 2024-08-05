part of 'crew_bloc.dart';

abstract class CrewEvent extends Equatable {
  const CrewEvent();

  @override
  List<Object> get props => [];
}

class LoadCrewEvent extends CrewEvent {
  final int movieId;
  const LoadCrewEvent(this.movieId);
  @override
  List<Object> get props => [movieId];
}
