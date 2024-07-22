import 'package:state_management/common/constants/translation_constants.dart';
import 'package:state_management/presentation/app_localizations.dart';
import 'package:state_management/presentation/journeys/movie_tabbed/tab.dart';

class MovieTabsConstants {
  static const List<Tab> tabsList = [
    Tab(index: 0, title: TranslationConstants.popular),
    Tab(index: 1, title: TranslationConstants.now),
    Tab(index: 2, title: TranslationConstants.soon),
  ];
}
