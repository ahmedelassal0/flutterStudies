import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(Icons.menu
        ),
        title: Text('First App'
        ),
        actions: [IconButton(onPressed: (){
          print('notification clicked')
        ;}
            , icon: Icon(Icons.notifications)),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(50.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0.5),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children:
                [
                Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.cyan.withOpacity(0.6),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0
                  ),
                  width: 200.0,
                  color: Colors.black.withOpacity(0.6),
                  child: Text('Text ONE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}
