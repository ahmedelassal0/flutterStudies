import 'package:flutter/material.dart';
import 'package:test_app/CounterScreen.dart';
import 'package:test_app/contacts_screen.dart';
import 'package:test_app/home_screen.dart';
import 'package:test_app/login_screen.dart';
import 'package:test_app/messenger.dart';

void main() {

  runApp(MyApp());
}
 class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: Counter(),
    debugShowCheckedModeBanner: false,);
  }
 }
