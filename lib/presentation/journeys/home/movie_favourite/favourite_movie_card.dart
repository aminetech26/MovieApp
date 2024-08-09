import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:state_management/data/core/api_constants.dart';
import 'package:state_management/data/tables/movie_table.dart';
import 'package:state_management/presentation/blocs/bloc/favourite_bloc.dart';
import 'package:state_management/presentation/journeys/movie_details/movie_details.dart';
import 'package:state_management/presentation/journeys/movie_details/movie_details_arguments.dart';

class FavouriteMovieCard extends StatelessWidget {
  final MovieTable movie;
  const FavouriteMovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h, top: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.w),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => MovieDetails(
                movieDetailArguments: MovieDetailArguments(movie.id),
              ),
            ),
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.w),
          child: Stack(
            children: <Widget>[
              CachedNetworkImage(
                imageUrl: '${ApiConstants.BASE_IMAGE_URL}${movie.posterPath}',
                fit: BoxFit.fitWidth,
                width: 145.h,
              ),
              Positioned(
                right: 10.w,
                top: 2.h,
                child: GestureDetector(
                  onTap: () {
                    BlocProvider.of<FavouriteBloc>(context)
                        .add(DeleteFavouriteMovieEvent(movie.id));
                    BlocProvider.of<FavouriteBloc>(context)
                        .add(LoadFavouriteMovies());
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8.w),
                    child: Icon(
                      Icons.delete,
                      size: 20.h,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}