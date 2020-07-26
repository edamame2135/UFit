import 'package:flutter/material.dart';
import 'bottombar.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      appBar: AppBar(
        title: Text('profile')
      ),
    );
  }
}
