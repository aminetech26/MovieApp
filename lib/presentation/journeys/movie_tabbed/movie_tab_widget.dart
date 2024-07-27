import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:state_management/presentation/blocs/bloc/movie_tabbed_bloc.dart';
import 'package:state_management/presentation/journeys/movie_tabbed/movie_tab_listview_builder.dart';
import 'package:state_management/presentation/journeys/movie_tabbed/movie_tabbed_constants.dart';
import 'package:state_management/presentation/journeys/movie_tabbed/tab_title_widget.dart';

class MovieTabWidget extends StatefulWidget {
  const MovieTabWidget({super.key});

  @override
  State<MovieTabWidget> createState() => _MovieTabWidgetState();
}

class _MovieTabWidgetState extends State<MovieTabWidget> {
  MovieTabbedBloc get movieTabbedBloc =>
      BlocProvider.of<MovieTabbedBloc>(context);

  int currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    movieTabbedBloc.add(MovieTabChangedEvent(currentTabIndex: currentTabIndex));
  }

  @override
  void dispose() {
    super.dispose();
    movieTabbedBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieTabbedBloc, MovieTabbedState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(top: 4.h),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  for (int i = 0; i < MovieTabsConstants.tabsList.length; i++)
                    TabTitleWidget(
                      onTap: () => _onTabTapped(i),
                      title: MovieTabsConstants.tabsList[i].title,
                      isSelected: MovieTabsConstants.tabsList[i].index ==
                          state.currentTabIndex,
                    )
                ],
              ),
              if (state is MovieTabChangedState)
                Expanded(
                  child: MovieTabListviewBuilder(
                    moviesList: state.moviesList,
                  ),
                )
            ],
          ),
        );
      },
    );
  }

  void _onTabTapped(int index) {
    movieTabbedBloc.add(MovieTabChangedEvent(currentTabIndex: index));
  }
}