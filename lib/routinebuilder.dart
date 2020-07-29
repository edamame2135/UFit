import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';
import 'bottombar.dart';

class RoutineBuilderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      body: RoutineScroll()
    );
  }
}

class RoutineScroll extends StatelessWidget {
  final List<String> assetNames = [
    'assets/brady-bellini-212790-unsplash.jpg',
    'assets/anton-repponen-99530-unsplash.jpg',
    'assets/kevin-cochran-524957-unsplash.jpg',
    'assets/meng-ji-102492-unsplash.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 120.0,
            flexibleSpace: FlexibleSpaceBar(
                title: Text('wassup')
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 13.0,
              crossAxisSpacing: 8.0,
              childAspectRatio: 0.75,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  padding: _edgeInsetsForIndex(index),
                  color: Colors.teal[100 * (index % 9)],
                  child: Image.asset(
                    assetNames[index % assetNames.length],
                  ),
                );
              },
              childCount: 40,
            ),
          ),
        ],
      ),
    );
  }
  EdgeInsets _edgeInsetsForIndex(int index) {
    if (index % 2 == 0) {
      return EdgeInsets.only(top: 4.0, left: 8.0, right: 4.0, bottom: 4.0);
    } else {
      return EdgeInsets.only(top: 4.0, left: 4.0, right: 8.0, bottom: 4.0);
    }
  }
}



