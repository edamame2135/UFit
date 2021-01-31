import 'package:flutter/cupertino.dart';
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.settings),
                              onPressed: () => {
                              },
                            ),
                        
                          ],
                        ),
                        Row(
                          children: [
                            //display profile picture
                            Container(               
                              color: Colors.white,
                              height: height * 0.17,
                              width: height * 0.17,
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/tomnook.png'),
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  'Tom Nooky',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  )
                                )
                                
                              )
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            //display important user data
            top: height * 0.38,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.red,
              height: height * 0.7,
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
                          color: Colors.teal[100 * (index % 9)],
                          child: Text('Grid Item $index'),
                        );
                      },
                      childCount: 40
                    ),
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
