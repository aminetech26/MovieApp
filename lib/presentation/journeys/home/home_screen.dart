import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/di/get_it.dart';
import 'package:state_management/presentation/blocs/bloc/movies_carousel_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late MoviesCarouselBloc moviesCarouselBloc;

  @override
  void initState() {
    super.initState();
    moviesCarouselBloc = getItInstance<MoviesCarouselBloc>();
    moviesCarouselBloc.add(const CarouselLoadEvent());
  }

  @override
  void dispose() {
    super.dispose();
    moviesCarouselBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MoviesCarouselBloc>(
      create: (context) => moviesCarouselBloc,
      child: Scaffold(
        body: BlocBuilder<MoviesCarouselBloc, MoviesCarouselState>(
          bloc: moviesCarouselBloc,
          builder: (context, state) {
            if (state is MovieCarouselLoaded) {
              return const Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  FractionallySizedBox(
                    alignment: Alignment.topCenter,
                    heightFactor: 0.6,
                    child: MovieCarouselWidget(
                      movies:state.moviesList,
                      defaultIndex:state.defaultIndex
                    ),
                  ),
                  FractionallySizedBox(
                    alignment: Alignment.bottomCenter,
                    heightFactor: 0.4,
                    child: Placeholder(
                      color: Colors.black,
                    ),
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
