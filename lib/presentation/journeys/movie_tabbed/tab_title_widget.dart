import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:state_management/presentation/app_localizations.dart';
import 'package:state_management/presentation/themes/app_color.dart';
import 'package:state_management/presentation/themes/text_theme.dart';

class TabTitleWidget extends StatelessWidget {
  final String title;
  final void Function() onTap;
  final bool isSelected;

  const TabTitleWidget(
      {super.key,
      required this.onTap,
      required this.title,
      this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border(
            bottom: BorderSide(
              color: isSelected ? AppColor.royalBlue : Colors.transparent,
              width: 1.h,
            ),
          ),
        ),
        child: Text(
          AppLocalizations.of(context).translate(title),
          style: isSelected
              ? Theme.of(context).textTheme.displayMedium
              : Theme.of(context).textTheme.whiteDisplayMedium,
        ),
      ),
    );
  }
}
