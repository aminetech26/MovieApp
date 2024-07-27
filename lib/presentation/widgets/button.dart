import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:state_management/presentation/app_localizations.dart';
import 'package:state_management/presentation/themes/app_color.dart';
import 'package:state_management/presentation/themes/text_theme.dart';

class Button extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const Button({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColor.royalBlue,
            AppColor.violet,
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20.w),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      margin: EdgeInsets.symmetric(vertical: 32.h),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          AppLocalizations.of(context).translate(text),
          style: Theme.of(context).textTheme.whiteDisplayMedium,
        ),
      ),
    );
  }
}
