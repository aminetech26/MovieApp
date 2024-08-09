import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/di/get_it.dart';
import 'package:state_management/presentation/blocs/bloc/favourite_bloc.dart';
import 'package:state_management/presentation/journeys/home/movie_favourite/favourite_movies_grid.dart';
import 'package:state_management/presentation/themes/app_color.dart';
import 'package:state_management/presentation/themes/text_theme.dart';

class MovieFavouriteScreen extends StatefulWidget {
  const MovieFavouriteScreen({super.key});

  @override
  State<MovieFavouriteScreen> createState() => _MovieFavouriteScreenState();
}

class _MovieFavouriteScreenState extends State<MovieFavouriteScreen> {
  late FavouriteBloc favouriteBloc;

  @override
  void initState() {
    super.initState();
    favouriteBloc = getItInstance<FavouriteBloc>();
    favouriteBloc.add(LoadFavouriteMovies());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Favourite Movies',
            style: TextStyle(color: Colors.white)),
        backgroundColor: AppColor.vulcan,
      ),
      body: BlocProvider.value(
          value: favouriteBloc,
          child: BlocBuilder<FavouriteBloc, FavouriteState>(
            builder: (context, state) {
              if (state is FavouriteLoaded) {
                if (state.movies.isEmpty) {
                  return const Center(child: Text('No Favourite Movies'));
                }
                return FavoriteMovieGrid(movies: state.movies);
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          )),
    );
  }
}
