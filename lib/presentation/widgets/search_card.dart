import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:state_management/data/core/api_constants.dart';
import 'package:state_management/data/models/movie_model.dart';
import 'package:state_management/presentation/journeys/movie_details/movie_details.dart';
import 'package:state_management/presentation/journeys/movie_details/movie_details_arguments.dart';
import 'package:state_management/presentation/themes/text_theme.dart';

class SearchMovieCard extends StatelessWidget {
  final MovieModel movie;

  const SearchMovieCard({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MovieDetails(
              movieDetailArguments: MovieDetailArguments(movie.id!),
            ),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 2.h,
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.w),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.w),
                child: CachedNetworkImage(
                  imageUrl: '${ApiConstants.BASE_IMAGE_URL}${movie.posterPath}',
                  width: 80.w,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    movie.title!,
                    style:
                        Theme.of(context).textTheme.dialogDescriptionTextTheme,
                  ),
                  Text(
                    movie.overview!,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.captionTextTheme,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
