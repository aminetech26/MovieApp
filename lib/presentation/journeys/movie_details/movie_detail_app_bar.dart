import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:state_management/data/models/movie_model.dart';
import 'package:state_management/presentation/blocs/bloc/favourite_bloc.dart';

class MovieDetailAppBar extends StatelessWidget {
  final MovieModel movie;
  const MovieDetailAppBar({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 12.h,
          ),
        ),
        BlocBuilder<FavouriteBloc, FavouriteState>(
          builder: (context, state) {
            if (state is IsMovieFavourite) {
              log('enters');
              return InkWell(
                onTap: () {
                  BlocProvider.of<FavouriteBloc>(context).add(
                    ToggleFavouriteMovie(
                      movie,
                      state.isFavourite,
                    ),
                  );
                },
                child: Icon(
                  state.isFavourite ? Icons.favorite : Icons.favorite_border,
                  color: Colors.white,
                  size: 12.h,
                ),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
