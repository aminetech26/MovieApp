import 'package:flutter/material.dart';
import 'package:state_management/presentation/journeys/navigation_list_item.dart';
import 'package:state_management/presentation/themes/text_theme.dart';

class NavigationExpandedListItem extends StatelessWidget {
  final String title;
  final Function onPressed;
  final List<String> children;
  const NavigationExpandedListItem(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColor.withOpacity(0.7),
            blurRadius: 2,
          )
        ],
      ),
      child: ExpansionTile(
        title: Text(
          title,
          style: Theme.of(context).textTheme.whiteDisplayMedium,
        ),
        children: <Widget>[
          for (int i = 0; i < children.length; i++)
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: NavigationListItem(
                  title: children[i],
                  onPressed: () {
                    print('index pressed $i');
                    onPressed(i);
                  }),
            )
        ],
      ),
    );
  }
}
