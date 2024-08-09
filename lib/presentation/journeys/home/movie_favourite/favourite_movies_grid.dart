import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:state_management/data/tables/movie_table.dart';
import 'package:state_management/presentation/journeys/home/movie_favourite/favourite_movie_card.dart';

class FavoriteMovieGrid extends StatelessWidget {
  final List<MovieTable> movies;

  const FavoriteMovieGrid({
    super.key,
    required this.movies,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: movies.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 8.w,
        ),
        itemBuilder: (context, index) {
          return FavouriteMovieCard(
            movie: movies[index],
          );
        },
      ),
    );
  }
}
