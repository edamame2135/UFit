import 'package:flutter/material.dart';
import 'home.dart';
import 'routinebuilder.dart';
import 'profile_screen.dart';

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
    return Scaffold(
      body: _children[_currentIndex],
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
