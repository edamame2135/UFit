import 'package:flutter/material.dart';
import 'package:pretty/screens/authenticate/login.dart';
class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}
//wrapper for login screen
class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: LoginScreen(),
    );
  }
}