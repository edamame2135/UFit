import 'package:flutter/material.dart';
import 'package:pretty/models/myuser.dart';
import 'package:pretty/screens/authenticate/authenticate.dart';
import 'package:pretty/screens/home/bottombar.dart';
import 'package:pretty/screens/home/home.dart';
import 'package:provider/provider.dart';


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //access user from stream
    final user  = Provider.of<MyUser>(context);
    //if user not signed in go to auth else go to home screen
    if (user == null) {
      return Authenticate();
    }
    else {
      return BotBar();
    }
  }
}