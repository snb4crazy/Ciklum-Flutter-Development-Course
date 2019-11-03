/*
Main File for the Project
 */

import 'package:flutter/material.dart';
import 'package:code_labs/CiklumCourse/Homework3/grid_image_page.dart';

void main() => runApp(Hw3BaseApp());

class Hw3BaseApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GridImagePage(),
    );
  }
}