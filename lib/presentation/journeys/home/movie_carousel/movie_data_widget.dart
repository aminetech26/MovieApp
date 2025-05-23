

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/presentation/blocs/bloc/movie_backdrop_bloc.dart';

class MovieDataWidget extends StatelessWidget {
  const MovieDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieBackdropBloc, MovieBackdropState>(
      builder: (context, state) {
        if (state is MovieBackdropChanged) {
          return Text(
            state.currentMovie.title!,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.fade,
            style: Theme.of(context).textTheme.displayLarge,
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}