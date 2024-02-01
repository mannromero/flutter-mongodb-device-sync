import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:namer_app/src/app/helpers/app_colors.dart';
import 'package:namer_app/src/app/pages/home/home_page_view.dart';
import 'package:namer_app/src/app/pages/todo/todo_page_view.dart';
class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        SizedBox(
          height: 90,
          child: DrawerHeader(
            decoration: BoxDecoration(
              color: Color(primaryColor),
            ),
            child: Text(
              '',
              style: TextStyle(
                color: Color(primaryColor),
                fontSize: 24,
                height: 20
              ),
            ),
          ),
        ),
        ListTile(
          title: Text('Item 1'),
          onTap: () {
            context.router.navigateNamed(HomePage.route);
            Navigator.pop(context); // Close the drawer
          },
        ),
        ListTile(
          title: Text('Item 2'),
          onTap: () {
            context.router.navigateNamed(TodoPage.route);
            Navigator.pop(context); // Close the drawer
          },
        ),
      ],
    ));
  }
}