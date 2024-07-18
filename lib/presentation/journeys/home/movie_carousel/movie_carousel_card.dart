import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:state_management/data/core/api_constants.dart';

class MovieCarouselCard extends StatelessWidget {
  final int movieId;
  final String posterPath;

  const MovieCarouselCard(
      {super.key, required this.movieId, required this.posterPath});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        elevation: 32,
        child: GestureDetector(
            onTap: () {},
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20.w),
                child: CachedNetworkImage(
                  imageUrl: '${ApiConstants.BASE_IMAGE_URL}$posterPath',
                  fit: BoxFit.cover,
                ))));
  }
}
