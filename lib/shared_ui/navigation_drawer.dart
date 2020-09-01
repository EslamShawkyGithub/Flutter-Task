import 'package:flutter/material.dart';
import 'package:flutter_task/model/nav_menu_item.dart';
import 'package:flutter_task/screen/home_screen.dart';
import 'package:flutter_task/screen/main_screen.dart';
import 'package:flutter_task/screen/profile_screen.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  List<NavigationMenuItem> navigationMenu = [
    NavigationMenuItem('الرئيسية', () => MainScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemBuilder: (context, position) {
          return ListTile(
            title: Text(
              navigationMenu[position].title,

            ),
            trailing: Icon(
              Icons.chevron_right,
              color: Colors.grey.shade400,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return navigationMenu[position].destination();
              }));
            },
          );
        },
        itemCount: navigationMenu.length,
      ),
    );
  }
}
