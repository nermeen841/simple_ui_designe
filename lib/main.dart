import 'package:flutter/material.dart';
import 'package:simple_ui_designe/presentation/screens/bottom_nav_screen/bottom_nav_bar.dart';
import 'package:easy_localization/easy_localization.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: ButtomNavPage(),
    );
  }
}

