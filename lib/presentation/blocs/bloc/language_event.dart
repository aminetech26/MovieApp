part of 'language_bloc.dart';

abstract class LanguageEvent extends Equatable {
  const LanguageEvent();

  @override
  List<Object> get props => [];
}

class LanguageChangedEvent extends LanguageEvent {
  final Locale newLocale;
  const LanguageChangedEvent({required this.newLocale});

  @override
  List<Object> get props => [newLocale];
}
