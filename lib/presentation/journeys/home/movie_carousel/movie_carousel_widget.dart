import 'package:flutter/material.dart';
import 'package:state_management/data/models/movie_model.dart';
import 'package:state_management/presentation/journeys/home/movie_carousel/movie_page_view.dart';
import 'package:state_management/presentation/widgets/movie_app_bar_widget.dart';

class MovieCarouselWidget extends StatelessWidget {
  final List<MovieModel> movies;
  final int defaultIndex;

  const MovieCarouselWidget(
      {super.key, required this.movies, required this.defaultIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MovieAppBar(),
        MoviePageView(
          initialPage: defaultIndex,
          moviesList: movies,
        )
      ],
    );
  }
}
