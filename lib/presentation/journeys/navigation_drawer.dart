import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:state_management/presentation/journeys/navigation_expanded_list_item.dart';
import 'package:state_management/presentation/journeys/navigation_list_item.dart';
import 'package:state_management/presentation/widgets/logo_widget.dart';

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
            NavigationListItem(title: 'Favorite Movies', onPressed: () {}),
            NavigationExpandedListItem(
                title: 'Languages',
                onPressed: () {},
                children: const ['English', 'Spanish']),
            NavigationListItem(title: 'Feedback', onPressed: () {}),
            NavigationListItem(title: 'About', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
