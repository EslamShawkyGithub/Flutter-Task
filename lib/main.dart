import 'package:flutter/material.dart';
import 'package:flutter_task/screen/main_screen.dart';
import 'package:flutter_task/utils/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Task',
      debugShowCheckedModeBanner: false,
      theme:AppTheme.appTheme,
      home: MainScreen(),
    );
  }
}


