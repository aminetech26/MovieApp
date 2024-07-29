// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:state_management/common/extensions/num_extensions.dart';
import 'package:state_management/data/core/api_constants.dart';

import 'package:state_management/data/models/movie_details_model.dart';
import 'package:state_management/presentation/journeys/movie_details/movie_detail_app_bar.dart';
import 'package:state_management/presentation/themes/text_theme.dart';

class BigPoster extends StatelessWidget {
  final MovieDetailsModel movie;

  const BigPoster({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Theme.of(context).primaryColor.withOpacity(0.3),
                Theme.of(context).primaryColor,
              ],
            ),
          ),
          child: CachedNetworkImage(
            imageUrl: '${ApiConstants.BASE_IMAGE_URL}${movie.posterPath}',
            width: MediaQuery.sizeOf(context).width,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: ListTile(
            title: Text(
              movie.title!,
              style: Theme.of(context).textTheme.whiteDisplayMedium,
            ),
            subtitle: Text(
              movie.releaseDate!,
              style: Theme.of(context).textTheme.whiteDisplayMedium,
            ),
            trailing: Text(
              movie.voteAverage!.convertToPercentageString(),
              style: Theme.of(context).textTheme.whiteDisplayMedium,
            ),
          ),
        ),
        Positioned(
          left: 16.w,
          right: 16.w,
          top: MediaQuery.of(context).viewPadding.top + 4.h,
          child: const MovieDetailAppBar(),
        ),
      ],
    );
  }
}
