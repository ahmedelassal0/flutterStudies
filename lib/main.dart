import 'package:flutter/material.dart';
import 'package:test_app/modules/counter/counterScreen.dart';
import 'package:test_app/modules/contacts/contacts_screen.dart';
import 'package:test_app/modules/home/home_screen.dart';
import 'package:test_app/modules/login/login_screen.dart';
import 'package:test_app/modules/messenger/messenger.dart';

void main() {

  runApp(MyApp());
}
 class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: LoginScreen(),
    debugShowCheckedModeBanner: false,);
  }
 }
