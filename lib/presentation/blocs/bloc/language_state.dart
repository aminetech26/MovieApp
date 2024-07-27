part of 'language_bloc.dart';

abstract class LanguageState extends Equatable {
  const LanguageState();

  @override
  List<Object> get props => [];
}

class LanguageInitial extends LanguageState {
  const LanguageInitial();
}

class LanguageChangedState extends LanguageState {
  final Locale newLocale;
  const LanguageChangedState( {required this.newLocale});
  @override
  List<Object> get props => [newLocale];
}
