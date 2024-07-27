import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(const LanguageChangedState(newLocale: Locale('en'))) {
    on<LanguageEvent>((event, emit) {
      if(event is LanguageChangedEvent){
        emit(LanguageChangedState(newLocale: event.newLocale));
      }
    });
  }
}
