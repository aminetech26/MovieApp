import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:state_management/data/models/cast_result_model.dart';
import 'package:state_management/domain/entities/app_error.dart';
import 'package:state_management/domain/entities/movie_params.dart';
import 'package:state_management/domain/repositories/movies_repository.dart';
import 'package:state_management/domain/usecases/get_cast_crew.dart';

part 'crew_event.dart';
part 'crew_state.dart';

class CrewBloc extends Bloc<CrewEvent, CrewState> {
  GetCastCrew getCastCrew;
  CrewBloc({required this.getCastCrew}) : super(CrewInitial()) {
    on<CrewEvent>((event, emit) async{
      if(event is LoadCrewEvent){
        final result = await getCastCrew(MovieParams(movieId: event.movieId));
        result.fold((l) => emit(ClassCrewLoadingError(l.errorType)), (r) => emit(CrewLoaded(r)));
      }
    });
  }
}
