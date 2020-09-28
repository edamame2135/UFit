import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';
import 'globals.dart' as globals;

class WorkoutCard extends StatefulWidget {

  final dynamic card;
  const WorkoutCard(this.card);

  @override
  _WorkoutCardState createState() => _WorkoutCardState();
}

class _WorkoutCardState extends State<WorkoutCard> {
 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          globals.itemsData.add(RoutineCard(widget.card["name"]));
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
                      Text(widget.card["name"]),
                    ],
                  ),
                  Text(widget.card["image"]),
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

class RoutineCard extends StatefulWidget {

  final dynamic workout;
  const RoutineCard(this.workout);

  @override
  _RoutineCardState createState() => _RoutineCardState();
}

class _RoutineCardState extends State<RoutineCard> {
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
                      Text(widget.workout),
                    ],
                  ),
                  Text(widget.workout),
                ]),
          ),
        ),
      );
  }
}