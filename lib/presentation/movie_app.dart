import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:state_management/common/constants/languages.dart';
import 'package:state_management/di/get_it.dart';
import 'package:state_management/presentation/app_localizations.dart';
import 'package:state_management/presentation/blocs/bloc/language_bloc.dart';
import 'package:state_management/presentation/journeys/home/home_screen.dart';
import 'package:state_management/presentation/themes/text_theme.dart';
import 'package:wiredash/wiredash.dart';

class MovieApp extends StatefulWidget {
  const MovieApp({super.key});

  @override
  State<MovieApp> createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
  late LanguageBloc _languageBloc;

  @override
  void initState() {
    super.initState();
    _languageBloc = getItInstance<LanguageBloc>();
  }

  @override
  void dispose() {
    super.dispose();
    _languageBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return BlocProvider.value(
          value: _languageBloc,
          child: BlocBuilder<LanguageBloc, LanguageState>(
            builder: (context, state) {
              if (state is LanguageChangedState) {
                return Wiredash(
                  options: WiredashOptionsData(locale: state.newLocale),
                  projectId: 'movieapp-drow5q1',
                  secret: 'sMwaa9QbxnLIRvaGFS1GFgi_5yK3aSeu',
                  child: MaterialApp(
                    debugShowCheckedModeBanner: false,
                    theme: themeData,
                    title: 'Movie App',
                    supportedLocales: Languages.languagesList
                        .map((e) => Locale(e.code))
                        .toList(),
                    locale: state.newLocale,
                    localizationsDelegates: const [
                      AppLocalizations.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                    ],
                    home: const HomeScreen(),
                  ),
                );
              }
              return const SizedBox.shrink();
            },
          ),
        );
      },
    );
  }
}
