import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:namer_app/src/app/pages/home/home_page_view.dart';
import 'package:namer_app/src/app/pages/todo/todo_page_view.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                context.router.replaceNamed('/home');
              },
            ),
            ListTile(
              title: Text('Todo'),
              onTap: () {
                context.router.replaceNamed('/todo');
              },
            ),
          ],
        ),
    );
  }
}