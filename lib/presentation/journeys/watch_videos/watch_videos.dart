import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:state_management/common/constants/translation_constants.dart';
import 'package:state_management/data/models/video_model.dart';
import 'package:state_management/presentation/app_localizations.dart';
import 'package:state_management/presentation/journeys/watch_videos/watch_videos_arguments.dart';
import 'package:state_management/presentation/themes/text_theme.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class WatchVideoScreen extends StatefulWidget {
  final WatchVideoArguments watchVideoArguments;

  const WatchVideoScreen({
    super.key,
    required this.watchVideoArguments,
  });

  @override
  State<WatchVideoScreen> createState() => _WatchVideoScreenState();
}

class _WatchVideoScreenState extends State<WatchVideoScreen> {
  late List<VideoModel> _videos;
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _videos = widget.watchVideoArguments.videos;
    _controller = YoutubePlayerController(
      initialVideoId: _videos[0].key!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context).translate(
          TranslationConstants.watchTrailer),
        ),
      ),
      body: YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller,
          aspectRatio: 16 / 9,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.amber,
          progressColors: const ProgressBarColors(
            playedColor: Colors.amber,
            handleColor: Colors.amberAccent,
          ),
        ),
        builder: (context, player) {
          return Column(
            children: [
              player,
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      for (int i = 0; i < _videos.length; i++)
                        Container(
                          height: 60.h,
                          padding:
                              EdgeInsets.symmetric(vertical: 8.h),
                          child: Row(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  _controller.load(_videos[i].key!);
                                  _controller.play();
                                },
                                child: CachedNetworkImage(
                                  width: 200.w,
                                  imageUrl: YoutubePlayer.getThumbnail(
                                    videoId: _videos[i].key!,
                                    quality: ThumbnailQuality.high,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.w),
                                  child: Text(
                                    _videos[i].name!,
                                    style:
                                        Theme.of(context).textTheme.whiteDisplayMedium,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
