import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class WorkoutList extends StatefulWidget {
  @override
  _WorkoutListState createState() => _WorkoutListState();
}

class _WorkoutListState extends State<WorkoutList> {
  @override
  Widget build(BuildContext context) {

    final workouts = Provider.of<QuerySnapshot>(context);
    print(workouts.docs);
    return Container(
      //child: RaisedButton(onPressed: () => {} ,)
    );
  }
}