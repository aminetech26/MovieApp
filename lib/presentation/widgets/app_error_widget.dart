import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:state_management/common/constants/translation_constants.dart';
import 'package:state_management/domain/entities/app_error.dart';
import 'package:state_management/presentation/app_localizations.dart';
import 'package:state_management/presentation/themes/text_theme.dart';
import 'package:wiredash/wiredash.dart';
import 'button.dart';

class AppErrorWidget extends StatelessWidget {
  final AppErrorType errorType;
  final Function() onPressed;

  const AppErrorWidget({
    super.key,
    required this.errorType,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return //7
        Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      //1
      child: Column(
        //6
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //2
          Text(
            errorType == AppErrorType.api
                ? AppLocalizations.of(context)
                    .translate(TranslationConstants.somethingWentWrong)
                : AppLocalizations.of(context)
                    .translate(TranslationConstants.checkNetwork),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.whiteDisplayMedium,
          ),
          //3
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              //4
              Button(
                onPressed: onPressed,
                text: TranslationConstants.retry,
              ),
              //5
              Button(
                onPressed: () => Wiredash.of(context).show(),
                text: TranslationConstants.feedback,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
