import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:state_management/data/models/video_model.dart';
import 'package:state_management/domain/entities/app_error.dart';
import 'package:state_management/domain/entities/movie_params.dart';
import 'package:state_management/domain/usecases/get_videos.dart';

part 'videos_event.dart';
part 'videos_state.dart';

class VideosBloc extends Bloc<VideosEvent, VideosState> {
  GetVideos getVideos;
  VideosBloc({required this.getVideos}) : super(VideosInitial()) {
    on<VideosEvent>((event, emit) async {
      if (event is LoadVideosEvent) {
        final videosEither =
            await getVideos(MovieParams(movieId: event.movieId));
        videosEither.fold((error) {
          emit(VideosLoadingError(error.errorType));
        }, (videos) {
          emit(VideosLoaded(videos));
        });
      }
    });
  }
}
