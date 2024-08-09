import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:state_management/common/constants/languages.dart';
import 'package:state_management/common/constants/translation_constants.dart';
import 'package:state_management/presentation/app_localizations.dart';
import 'package:state_management/presentation/blocs/bloc/language_bloc.dart';
import 'package:state_management/presentation/journeys/home/movie_favourite/movie_favourite.dart';
import 'package:state_management/presentation/journeys/navigation_expanded_list_item.dart';
import 'package:state_management/presentation/journeys/navigation_list_item.dart';
import 'package:state_management/presentation/widgets/app_dialog.dart';
import 'package:state_management/presentation/widgets/logo_widget.dart';
import 'package:wiredash/wiredash.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColor.withOpacity(0.7),
            blurRadius: 4,
          )
        ],
      ),
      width: 300.w,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 8.h, bottom: 18.h, left: 8.h, right: 8.h),
              child: LogoWidget(
                height: 60.h,
              ),
            ),
            NavigationListItem(
                title: AppLocalizations.of(context)
                    .translate(TranslationConstants.favouriteMovies),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MovieFavouriteScreen(),
                  ));
                }),
            NavigationExpandedListItem(
                title: 'Languages',
                onPressed: (index) {
                  BlocProvider.of<LanguageBloc>(context).add(
                      LanguageChangedEvent(
                          newLocale:
                              Locale(Languages.languagesList[index].code)));
                },
                children: Languages.languagesList.map((e) => e.value).toList()),
            NavigationListItem(
                title: AppLocalizations.of(context)
                    .translate(TranslationConstants.feedback),
                onPressed: () {
                  Navigator.of(context).pop();
                  Wiredash.of(context).show();
                }),
            NavigationListItem(
                title: AppLocalizations.of(context)
                    .translate(TranslationConstants.about),
                onPressed: () {
                  Navigator.of(context).pop();
                  _showDialog(context);
                }),
          ],
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AppDialog(
            title: TranslationConstants.dialogTitle,
            description: TranslationConstants.dialogDescription,
            buttonText: TranslationConstants.okay,
            image: Image.asset(
              'assets/pngs/tmdb_logo.png',
              height: 32.h,
            ),
          );
        });
  }
}
