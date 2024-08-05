part of 'crew_bloc.dart';

abstract class CrewState extends Equatable {
  const CrewState();

  @override
  List<Object> get props => [];
}

class CrewInitial extends CrewState {}

class CrewLoaded extends CrewState {
  final List<CastModel> crew;
  const CrewLoaded(this.crew);
  @override
  List<Object> get props => [crew];
}

class ClassCrewLoadingError extends CrewState {
  final AppErrorType errorType;
  const ClassCrewLoadingError(this.errorType);
  @override
  List<Object> get props => [errorType];
}
