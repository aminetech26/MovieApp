import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/di/get_it.dart';
import 'package:state_management/presentation/blocs/bloc/movie_backdrop_bloc.dart';
import 'package:state_management/presentation/blocs/bloc/movie_tabbed_bloc.dart';
import 'package:state_management/presentation/blocs/bloc/movies_carousel_bloc.dart';
import 'package:state_management/presentation/journeys/home/movie_carousel/movie_carousel_widget.dart';
import 'package:state_management/presentation/journeys/movie_tabbed/movie_tab_widget.dart';
import 'package:state_management/presentation/journeys/navigation_drawer.dart'
    as nd;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late MoviesCarouselBloc moviesCarouselBloc;
  late MovieBackdropBloc movieBackdropBloc;
  late MovieTabbedBloc movieTabbedBloc;

  @override
  void initState() {
    super.initState();
    moviesCarouselBloc = getItInstance<MoviesCarouselBloc>();
    movieBackdropBloc = moviesCarouselBloc.movieBackdropBloc;
    movieTabbedBloc = getItInstance<MovieTabbedBloc>();
    moviesCarouselBloc.add(const CarouselLoadEvent());
  }

  @override
  void dispose() {
    super.dispose();
    moviesCarouselBloc.close();
    movieBackdropBloc.close();
    movieTabbedBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => moviesCarouselBloc,
        ),
        BlocProvider(
          create: (context) => movieBackdropBloc,
        ),
        BlocProvider(
          create: (context) => movieTabbedBloc,
        ),
      ],
      child: Scaffold(
        drawer: const nd.NavigationDrawer(),
        body: BlocBuilder<MoviesCarouselBloc, MoviesCarouselState>(
          bloc: moviesCarouselBloc,
          builder: (context, state) {
            if (state is MovieCarouselLoaded) {
              return Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  FractionallySizedBox(
                    alignment: Alignment.topCenter,
                    heightFactor: 0.6,
                    child: MovieCarouselWidget(
                        movies: state.moviesList,
                        defaultIndex: state.defaultIndex),
                  ),
                  const FractionallySizedBox(
                    alignment: Alignment.bottomCenter,
                    heightFactor: 0.4,
                    child: MovieTabWidget(),
                  )
                ],
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
