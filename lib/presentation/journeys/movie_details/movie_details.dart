import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:state_management/common/constants/translation_constants.dart';
import 'package:state_management/data/models/movie_model.dart';
import 'package:state_management/di/get_it.dart';
import 'package:state_management/presentation/app_localizations.dart';
import 'package:state_management/presentation/blocs/bloc/crew_bloc.dart';
import 'package:state_management/presentation/blocs/bloc/favourite_bloc.dart';
import 'package:state_management/presentation/blocs/bloc/movie_details_bloc.dart';
import 'package:state_management/presentation/blocs/bloc/videos_bloc.dart';
import 'package:state_management/presentation/journeys/movie_details/big_poster.dart';
import 'package:state_management/presentation/journeys/movie_details/cast_widget.dart';
import 'package:state_management/presentation/journeys/movie_details/movie_details_arguments.dart';
import 'package:state_management/presentation/journeys/movie_details/videos_widget.dart';
import 'package:state_management/presentation/themes/text_theme.dart';
import 'package:state_management/presentation/widgets/app_error_widget.dart';

class MovieDetails extends StatefulWidget {
  final MovieDetailArguments movieDetailArguments;
  const MovieDetails({
    super.key,
    required this.movieDetailArguments,
  });

  @override
  State<MovieDetails> createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  late MovieDetailsBloc movieDetailsBloc;
  late CrewBloc crewBloc;
  late VideosBloc videosBloc;
  late FavouriteBloc favouriteBloc;

  @override
  void initState() {
    super.initState();
    movieDetailsBloc = getItInstance<MovieDetailsBloc>();
    crewBloc = movieDetailsBloc.crewBloc;
    videosBloc = movieDetailsBloc.videosBloc;
    favouriteBloc = movieDetailsBloc.favouriteBloc;
    movieDetailsBloc
        .add(MovieDetailsLoad(movieId: widget.movieDetailArguments.movieId));
  }

  @override
  void dispose() {
    super.dispose();
    movieDetailsBloc.close();
    crewBloc.close();
    videosBloc.close();
    favouriteBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: movieDetailsBloc,
          ),
          BlocProvider(
            create: (context) => crewBloc,
          ),
          BlocProvider(
            create: (context) => videosBloc,
          ),
          BlocProvider(
            create: (context) => favouriteBloc,
          ),
        ],
        child: BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
          builder: (context, state) {
            if (state is MovieDetailsLoaded) {
              final movieDetail = state.movieDetails;
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    BigPoster(
                      movie:  MovieModel.fromMovieDetailModel(movieDetail),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                      ),
                      child: Text(
                        movieDetail.overview!,
                        style: Theme.of(context).textTheme.whiteDisplayMedium,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 16.h),
                      child: Text(
                        AppLocalizations.of(context)
                            .translate(TranslationConstants.cast),
                        style: Theme.of(context).textTheme.whiteDisplayMedium,
                      ),
                    ),
                    const CastWidget(),
                    VideosWidget(videosBloc: videosBloc),
                  ],
                ),
              );
            } else if (state is MovieDetailsLoadingError) {
              return AppErrorWidget(
                  errorType: state.errorType,
                  onPressed: () {
                    movieDetailsBloc.add(MovieDetailsLoad(
                        movieId: widget.movieDetailArguments.movieId));
                  });
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
