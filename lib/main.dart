import 'package:flutter/material.dart';
import 'package:pretty/models/myuser.dart';
import 'package:pretty/screens/home/routinebuilder.dart';
import 'package:pretty/screens/wrapper.dart';
import 'package:provider/provider.dart';
import 'screens/home/profile_screen.dart';
import 'screens/authenticate/login.dart';
import 'screens/home/home.dart';
import 'screens/home/routinebuilder.dart';
import 'screens/home/bottombar.dart';
import 'screens/home/workout_category.dart';
import 'screens/home/widgets.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pretty/services/auth.dart';
void main() async {
  //initialize firebase things
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  print('bruh momnet');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //stream to allow other widgets to get user info and auth state
    return StreamProvider<MyUser>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
        routes: {
          '/homescreen': (context) => BotBar(),
        }
      ),
    );
  }
}


