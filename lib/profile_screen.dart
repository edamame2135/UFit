import 'package:flutter/material.dart';
import 'bottombar.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            height: height * 0.35,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: const Radius.circular(40),
              ),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                  child: SafeArea(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.settings)
                            ),
                          ],
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.black12,
                        ),
                        Text('frwaeeeeeee')
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.38,
            left: 0,
            right: 0,
            child: Container(
                color: Colors.red,
                height: height * 0.7
            ),
          ),
        ],
      ),
    );
  }
}
