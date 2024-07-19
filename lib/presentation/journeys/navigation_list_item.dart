import 'package:flutter/material.dart';
import 'package:state_management/presentation/themes/text_theme.dart';

class NavigationListItem extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const NavigationListItem(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).primaryColor.withOpacity(0.7),
              blurRadius: 2,
            )
          ],
        ),
        child: ListTile(
          title: Text(
            title,
            style: Theme.of(context).textTheme.whiteDisplayMedium,
          ),
        ),
      ),
    );
  }
}
