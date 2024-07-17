import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      builder: (_ , child) {
        return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      title: 'Movie App',
      home: const HomeScreen(),
    );
      },    );
  }
}
