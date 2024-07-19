import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:state_management/data/models/movie_model.dart';
import 'package:state_management/presentation/blocs/bloc/movie_backdrop_bloc.dart';
import 'package:state_management/presentation/journeys/home/movie_carousel/animated_movie_card_widget.dart';

class MoviePageView extends StatefulWidget {
  final int initialPage;
  final List<MovieModel> moviesList;
  const MoviePageView(
      {super.key, required this.initialPage, required this.moviesList});

  @override
  State<MoviePageView> createState() => _MoviePageViewState();
}

class _MoviePageViewState extends State<MoviePageView> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
        viewportFraction: 0.7,
        keepPage: false,
        initialPage: widget.initialPage);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      height: MediaQuery.sizeOf(context).height * 0.35,
      child: PageView.builder(
          onPageChanged: (index) {
            BlocProvider.of<MovieBackdropBloc>(context)
                .add(MovieBackdropChangedEvent(widget.moviesList[index]));
          },
          pageSnapping: true,
          itemCount: widget.moviesList.length,
          controller: _pageController,
          itemBuilder: (context, index) {
            final MovieModel movie = widget.moviesList[index];
            return AnimatedMovieCardWidget(
                index: index,
                pageController: _pageController,
                movieId: movie.id!,
                posterPath: movie.posterPath!);
          }),
    );
  }
}
