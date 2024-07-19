import 'package:flutter/material.dart';
import 'package:state_management/data/models/movie_model.dart';
import 'package:state_management/presentation/journeys/home/movie_carousel/movie_backdrop_widget.dart';
import 'package:state_management/presentation/journeys/home/movie_carousel/movie_data_widget.dart';
import 'package:state_management/presentation/journeys/home/movie_carousel/movie_page_view.dart';
import 'package:state_management/presentation/widgets/movie_app_bar_widget.dart';
import 'package:state_management/presentation/widgets/separator.dart';

class MovieCarouselWidget extends StatelessWidget {
  final List<MovieModel> movies;
  final int defaultIndex;

  const MovieCarouselWidget(
      {super.key, required this.movies, required this.defaultIndex});

  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.expand, children: [
      const MovieBackdropWidget(),
      Column(
        children: [
          const MovieAppBar(),
          MoviePageView(
            initialPage: defaultIndex,
            moviesList: movies,
          ),
          const MovieDataWidget(),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 100,
          ),
          const Separator()
        ],
      ),
    ]);
  }
}
