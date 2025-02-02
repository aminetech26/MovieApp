part of 'videos_bloc.dart';

abstract class VideosState extends Equatable {
  const VideosState();
  
  @override
  List<Object> get props => [];
}

class VideosInitial extends VideosState {}

class VideosLoaded extends VideosState {
  final List<VideoModel> videos;
  const VideosLoaded(this.videos);
  @override
  List<Object> get props => [videos];
}

class VideosLoadingError extends VideosState {
  final AppErrorType errorType;
  const VideosLoadingError(this.errorType);
  @override
  List<Object> get props => [errorType];
}