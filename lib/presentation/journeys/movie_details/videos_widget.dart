import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/common/constants/translation_constants.dart';
import 'package:state_management/presentation/app_localizations.dart';
import 'package:state_management/presentation/blocs/bloc/videos_bloc.dart';
import 'package:state_management/presentation/journeys/watch_videos/watch_videos.dart';
import 'package:state_management/presentation/journeys/watch_videos/watch_videos_arguments.dart';
import 'package:state_management/presentation/widgets/button.dart';

class VideosWidget extends StatelessWidget {
  final VideosBloc videosBloc;

  const VideosWidget({
    super.key,
    required this.videosBloc,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: videosBloc,
      builder: (context, state) {
        if (state is VideosLoaded && state.videos.iterator.moveNext()) {
          final videos = state.videos;
          return Button(
            text: 'watchTrailer',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => WatchVideoScreen(
                    watchVideoArguments: WatchVideoArguments(videos),
                  ),
                ),
              );
            },
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
