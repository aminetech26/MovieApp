import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:state_management/common/constants/translation_constants.dart';
import 'package:state_management/presentation/app_localizations.dart';
import 'package:state_management/presentation/themes/app_color.dart';
import 'package:state_management/presentation/themes/text_theme.dart';
import 'package:state_management/presentation/widgets/button.dart';

class AppDialog extends StatelessWidget {
  final String title, description, buttonText;
  final Widget? image;

  const AppDialog({
    super.key,
    required this.title,
    required this.description,
    required this.buttonText,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColor.vulcan,
      elevation: 32.0,
      insetPadding: EdgeInsets.all(32.w),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.w),
        ),
      ),
      child: Container(
        padding: EdgeInsets.only(
          top: 20.h,
          left: 16.w,
          right: 16.w,
        ),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColor.vulcan,
              blurRadius: 16,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              AppLocalizations.of(context).translate(title),
              style: Theme.of(context).textTheme.dialogTitleTextTheme,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 32.h),
              child: Text(
                AppLocalizations.of(context).translate(description),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.dialogDescriptionTextTheme,
              ),
            ),
            if (image != null) image!,
            Button(
              onPressed: () {
                Navigator.of(context).pop();
              },
              text: TranslationConstants.okay,
              key: const Key('dialog button key'),
            ),
          ],
        ),
      ),
    );
  }
}
