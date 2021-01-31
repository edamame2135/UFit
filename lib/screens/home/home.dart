import 'package:flutter/material.dart';
import 'bottombar.dart';
import 'constants.dart';
import 'globals.dart' as globals;
import 'widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  List<Widget> routine = [];
  //get routines from user
  void getRoutine() {
    List<Workout> myRoutine = globals.itemsData;
    List<Widget> temp = [];
    myRoutine.forEach((workout) {
      temp.add(RoutineCard(workout));
    });
    setState(() {
      routine = temp;
    });    
  }

  @override
  void initState() {
    super.initState();
    getRoutine();
  }

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
                      //display profile image and name
                      children: <Widget>[
                        SizedBox(height: 20.0),
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/tomnook.png'),
                          backgroundColor: Colors.black12,
                          radius: 40.0,
                        ),
                        SizedBox(height: 10.0),
                        Text('TomNooky')
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
                // display user's routine
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                        itemCount: routine.length,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return routine[index];
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
