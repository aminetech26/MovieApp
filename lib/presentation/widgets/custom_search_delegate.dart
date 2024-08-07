import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:state_management/presentation/blocs/bloc/search_bloc.dart';
import 'package:state_management/presentation/themes/app_color.dart';
import 'package:state_management/presentation/themes/text_theme.dart';
import 'package:state_management/presentation/widgets/app_error_widget.dart';
import 'package:state_management/presentation/widgets/search_card.dart';

class CustomSearchDelegate extends SearchDelegate {
  final SearchBloc searchMovieBloc;

  CustomSearchDelegate({required this.searchMovieBloc});

  @override
  ThemeData appBarTheme(BuildContext context) {
    return themeData.copyWith(
      appBarTheme: const AppBarTheme(
        elevation: 0.0,
        backgroundColor: AppColor.vulcan,
        titleTextStyle: TextStyle(color: Colors.white),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: InputBorder.none,
        labelStyle: Theme.of(context).textTheme.whiteDisplayMedium,
        hintStyle: Theme.of(context).textTheme.whiteDisplayMedium,
      ),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(
          Icons.clear,
          color: query.isEmpty ? Colors.grey : AppColor.royalBlue,
        ),
        onPressed: query.isEmpty ? null : () => query = '',
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return GestureDetector(
      onTap: () {
        close(context, null);
      },
      child: Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
        size: 12.h,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    searchMovieBloc.add(
      SearchMovies(query),
    );
    return BlocBuilder<SearchBloc, SearchState>(
      bloc: searchMovieBloc,
      builder: (context, state) {
        if (state is SearchLoadingError) {
          return AppErrorWidget(
            errorType: state.errorType,
            onPressed: () => searchMovieBloc.add(SearchMovies(query)),
          );
        } else if (state is SearchLoadedList) {
          final movies = state.movies;
          if (movies.isEmpty) {
            return Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 64.w),
                child: Text(
                  'No movies found for : $query',
                  style: const TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            );
          }
          return ListView.builder(
            itemBuilder: (context, index) => SearchMovieCard(
              movie: movies[index],
            ),
            itemCount: movies.length,
            scrollDirection: Axis.vertical,
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const SizedBox.shrink();
  }
}
