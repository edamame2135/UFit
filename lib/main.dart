import 'package:flutter/material.dart';
import 'package:pretty/routinebuilder.dart';
import 'profile_screen.dart';
import 'login.dart';
import 'home.dart';
import 'routinebuilder.dart';
import 'bottombar.dart';
import 'workout_category.dart';
import 'widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      routes: {
        '/homescreen': (context) => BotBar(),
      }
    );
  }
}


