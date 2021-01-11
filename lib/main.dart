import 'package:flutter/material.dart';
import 'package:pretty/screens/home/routinebuilder.dart';
import 'package:pretty/screens/wrapper.dart';
import 'screens/home/profile_screen.dart';
import 'screens/authenticate/login.dart';
import 'screens/home/home.dart';
import 'screens/home/routinebuilder.dart';
import 'screens/home/bottombar.dart';
import 'screens/home/workout_category.dart';
import 'screens/home/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Wrapper(),
      routes: {
        '/homescreen': (context) => BotBar(),
      }
    );
  }
}


