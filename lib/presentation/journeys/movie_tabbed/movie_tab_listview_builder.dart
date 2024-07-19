import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:state_management/data/models/movie_model.dart';
import 'package:state_management/presentation/journeys/movie_tabbed/movie_tab_card_widget.dart';

class MovieTabListviewBuilder extends StatelessWidget {
  final List<MovieModel> moviesList;
  const MovieTabListviewBuilder({super.key, required this.moviesList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final movie = moviesList[index];
            return MovieTabCardWidget(
                movieId: movie.id!,
                posterPath: movie.posterPath!,
                title: movie.title!);
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 14.w,
            );
          },
          itemCount: moviesList.length),
    );
  }
}
