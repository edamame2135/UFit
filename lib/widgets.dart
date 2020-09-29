import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';
import 'globals.dart' as globals;
import 'workout_category.dart';

class CategoryCard extends StatefulWidget {
  final dynamic card;
  const CategoryCard(this.card);

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => WorkoutCatelog(widget.card["name"]))
        );
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
                    SizedBox(height: 50),
                    Text(widget.card["name"]),
                  ],
                ),
                Material(
                  child: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      globals.itemsData.add(RoutineCard(widget.card["name"]));
                    },
                  ),
                ),
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
    return Container();
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
