/*
Tested in DartPad - https://dartpad.dev/
 */
import 'package:flutter/material.dart';
//import 'hw2.dart';
import 'base_todo_app.dart';

void main() => runApp(Hw2BaseApp());

class Hw2BaseApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TodoList(),
    );
  }
}