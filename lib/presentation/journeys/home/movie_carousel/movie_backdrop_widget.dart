import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:state_management/data/core/api_constants.dart';
import 'package:state_management/presentation/blocs/bloc/movie_backdrop_bloc.dart';

class MovieBackdropWidget extends StatelessWidget {
  const MovieBackdropWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      alignment: Alignment.topCenter,
      heightFactor: 0.7,
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(40.w),
        ),
        child: Stack(
          children: <Widget>[
            FractionallySizedBox(
              heightFactor: 1,
              widthFactor: 1,
              child: BlocBuilder<MovieBackdropBloc, MovieBackdropState>(
                builder: (context, state) {
                  if (state is MovieBackdropChanged) {
                    return CachedNetworkImage(
                      imageUrl:
                          '${ApiConstants.BASE_IMAGE_URL}${state.currentMovie.backdropPath}',
                      fit: BoxFit.fitHeight,
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 1,
                color: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
  }