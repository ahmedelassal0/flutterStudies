import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget regularButton({
  double width = double.infinity,
  Color color = Colors.blue,
  required VoidCallback function,
  required String text,
}) {
  return Container(
    width: width,
    color: color,
    child: MaterialButton(
      onPressed: function,
      child: Text('${text.toUpperCase()}',
        style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
    ),
  );
}