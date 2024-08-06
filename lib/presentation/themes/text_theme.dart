import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:state_management/presentation/themes/app_color.dart';

final themeData = ThemeData(
  primaryColor: AppColor.vulcan,
  scaffoldBackgroundColor: AppColor.vulcan,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  appBarTheme: const AppBarTheme(elevation: 0.0),
  textTheme: TextTheme(
      displayLarge: GoogleFonts.poppins(fontSize: 15.sp, color: Colors.white),
      displayMedium:
          GoogleFonts.poppins(fontSize: 15.sp, color: AppColor.royalBlue)),
);

extension TextThemeExtension on TextTheme {
  TextStyle get whiteDisplayMedium =>
      displayMedium!.copyWith(color: Colors.white, fontWeight: FontWeight.w600);
  TextStyle get dialogTitleTextTheme =>
      displayMedium!.copyWith(color: Colors.white, fontWeight: FontWeight.w600);
  TextStyle get dialogDescriptionTextTheme =>
      displayMedium!.copyWith(color: Colors.white, fontWeight: FontWeight.w400);
  TextStyle get captionTextTheme => displayMedium!.copyWith(
      color: Colors.purple, fontWeight: FontWeight.w400, fontSize: 12.sp);
}
