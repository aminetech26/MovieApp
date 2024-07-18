part of 'movie_backdrop_bloc.dart';

@freezed
class MovieBackdropEvent with _$MovieBackdropEvent {
  const factory MovieBackdropEvent.started() = _Started;
}