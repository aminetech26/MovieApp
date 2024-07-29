import 'package:equatable/equatable.dart';

class MovieParams extends Equatable {
  final int movieId;

  const MovieParams({required this.movieId});

  @override
  List<Object?> get props => [movieId];
}
