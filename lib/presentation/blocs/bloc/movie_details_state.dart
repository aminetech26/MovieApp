// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'movie_details_bloc.dart';

abstract class MovieDetailsState extends Equatable {
  const MovieDetailsState();

  @override
  List<Object> get props => [];
}

class MovieDetailsInitial extends MovieDetailsState {}

class MovieDetailsLoaded extends MovieDetailsState {
  final MovieDetailsModel movieDetails;

  const MovieDetailsLoaded({required this.movieDetails});
  @override
  List<Object> get props => [movieDetails];
}

class MovieDetailsLoading extends MovieDetailsState {}

class MovieDetailsLoadingError extends MovieDetailsState {
  final AppErrorType errorType;
  const MovieDetailsLoadingError({
    required this.errorType,
  });
  @override
  List<Object> get props => [errorType];
}
