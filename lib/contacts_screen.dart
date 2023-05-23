import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Contact {
  Contact({
    required this.name,
    required this.phoneNumber,

  });
  final String name;
  final String phoneNumber;
}
List<Contact> contacts = [
  Contact(
      name: "Ahmad Elassal",
      phoneNumber: "01004164250"),
  Contact(
      name: "Mohamed Farag",
      phoneNumber: "01125694250"),
  Contact(
      name: "Abdelrahman Hammad",
      phoneNumber: "01565656565"),
  Contact(
      name: "Ahmed Khalil",
      phoneNumber: "0247664250"),
  Contact(
      name: "Ahmad Elassal",
      phoneNumber: "01004164250"),
  Contact(
      name: "Mohamed Farag",
      phoneNumber: "01125694250"),
  Contact(
      name: "Abdelrahman Hammad",
      phoneNumber: "01565656565"),
  Contact(
      name: "Ahmed Khalil",
      phoneNumber: "0247664250"),
  Contact(
      name: "Ahmad Elassal",
      phoneNumber: "01004164250"),
  Contact(
      name: "Mohamed Farag",
      phoneNumber: "01125694250"),
  Contact(
      name: "Abdelrahman Hammad",
      phoneNumber: "01565656565"),
  Contact(
      name: "Ahmed Khalil",
      phoneNumber: "0247664250"),
  Contact(
      name: "Ahmad Elassal",
      phoneNumber: "01004164250"),
  Contact(
      name: "Mohamed Farag",
      phoneNumber: "01125694250"),
  Contact(
      name: "Abdelrahman Hammad",
      phoneNumber: "01565656565"),
  Contact(
      name: "Ahmed Khalil",
      phoneNumber: "0247664250"),
];
class ContactsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contacts",
          ),
        ),
      body: ListView.separated(itemBuilder: (context, index) => buildContactItem(contacts[index]),
          separatorBuilder:(context, index) => Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
          itemCount: contacts.length),
    );
  }
  Widget buildContactItem(Contact c) => Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(children:
    [
      CircleAvatar(backgroundColor: Colors.lightBlue,
      ),
      SizedBox(
        width: 16.0,
      ),
      Column(
        children:
        [
          Text("${c.name}",
            style: TextStyle(fontSize: 20.0,
            fontWeight: FontWeight.bold),
          ),
          Text("${c.phoneNumber}",
            style: TextStyle(color: Colors.grey[400]),
          ),
        ],
      ),

    ],),
  );
}
