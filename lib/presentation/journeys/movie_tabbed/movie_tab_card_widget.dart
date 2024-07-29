import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:state_management/common/extensions/string_extensions.dart';
import 'package:state_management/data/core/api_client.dart';
import 'package:state_management/data/core/api_constants.dart';
import 'package:state_management/presentation/journeys/movie_details/movie_details.dart';
import 'package:state_management/presentation/journeys/movie_details/movie_details_arguments.dart';
import 'package:state_management/presentation/themes/text_theme.dart';

class MovieTabCardWidget extends StatelessWidget {
  final int movieId;
  final String title, posterPath;

  const MovieTabCardWidget(
      {super.key,
      required this.movieId,
      required this.posterPath,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MovieDetails(movieDetailArguments: MovieDetailArguments(movieId));
      }));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                imageUrl: '${ApiConstants.BASE_IMAGE_URL}$posterPath',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.h),
            child: Text(
              textAlign: TextAlign.center,
              maxLines: 1,
              title.intellTrim(),
              style: Theme.of(context).textTheme.whiteDisplayMedium,
            ),
          )
        ],
      ),
    );
  }
}
