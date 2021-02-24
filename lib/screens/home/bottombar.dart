import 'package:flutter/material.dart';
import 'package:pretty/services/auth.dart';
import 'home.dart';
import 'routinebuilder.dart';
import 'profile_screen.dart';
import 'package:pretty/services/database.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'workout_list.dart';

class BotBar extends StatefulWidget {
  @override
  _BotBarState createState() => _BotBarState();
}

class _BotBarState extends State<BotBar> {
  int _currentIndex = 1;
  final List<Widget> _children = [
    RoutineBuilderScreen(),
    Home(),
    ProfileScreen()
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    //get authentication to enable sign-out
    final AuthService _auth = AuthService();

    return StreamProvider<QuerySnapshot>.value(
        value: DatabaseService().workouts,
        child: Scaffold(
        //sign out button
        appBar: AppBar(
          title: Text('UFit'),
          backgroundColor: Colors.pink,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('logout'),
              onPressed: () async {
                await _auth.signOut();
              }
              )
          ]
        ),
        //bottom navigation bar
        // body: _children[_currentIndex],
        body: WorkoutList(),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
          child: BottomNavigationBar(
            iconSize: 30,
            unselectedFontSize: 10,
            unselectedIconTheme: IconThemeData(
                color: Colors.black12
            ),
            selectedIconTheme: IconThemeData(
                color: Colors.cyanAccent
            ),
            onTap: onTappedBar,
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.fitness_center),
                  label: 'Create Routines'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'My Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}




class FitBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
      child: BottomNavigationBar(
        iconSize: 30,
        unselectedFontSize: 10,
        unselectedIconTheme: IconThemeData(
          color: Colors.black12
        ),
        selectedIconTheme: IconThemeData(
          color: Colors.cyanAccent
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            title: Text('Create Routines')
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('My Profile'),
          ),
        ],
      ),
    );
  }
}
