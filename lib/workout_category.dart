import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';
import 'globals.dart' as globals;

class WorkoutCatelog extends StatefulWidget {
  @override
  _WorkoutCatelogState createState() => _WorkoutCatelogState();
}

class _WorkoutCatelogState extends State<WorkoutCatelog> {

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
                        SizedBox(height: 20.0),
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/tomnook.png'),
                          backgroundColor: Colors.black12,
                          radius: 40.0,
                        ),
                        SizedBox(height: 10.0),
                        Text('Tom Nooky')
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
              height: height * 0.6,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                        itemCount: globals.itemsData.length,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return globals.itemsData[index];
                        }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}