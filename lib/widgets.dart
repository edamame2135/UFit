import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';

class WorkoutCard extends StatefulWidget {
  @override
  _WorkoutCardState createState() => _WorkoutCardState();
}

class _WorkoutCardState extends State<WorkoutCard> {
 
  dynamic card;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          print("yerr");
        },
        child: Container(
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(card["name"]),
                    ],
                  ),
                  Text(card["image"]),
                ]),
          ),
        ),
      );
  }
}

class MyRoutineList extends StatefulWidget {
  @override
  _MyRoutineListState createState() => _MyRoutineListState();
}

class _MyRoutineListState extends State<MyRoutineList> {
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}

