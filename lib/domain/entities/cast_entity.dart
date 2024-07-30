import 'package:equatable/equatable.dart';

class CastEntity extends Equatable {
  final String creditId;
  final String caractere;
  final String name;
  final String posterPath;

  const CastEntity({required this.creditId, required this.caractere, required this.name, required this.posterPath});

  @override
  List<Object?> get props => [creditId];
}
