import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:state_management/common/constants/languages.dart';
import 'package:state_management/presentation/app_localizations.dart';
import 'package:state_management/presentation/journeys/home/home_screen.dart';
import 'package:state_management/presentation/themes/text_theme.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeData,
          title: 'Movie App',
          supportedLocales:
              Languages.languagesList.map((e) => Locale(e.code)).toList(),
          locale: Locale(Languages.languagesList[1].code),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          home: const HomeScreen(),
        );
      },
    );
  }
}
