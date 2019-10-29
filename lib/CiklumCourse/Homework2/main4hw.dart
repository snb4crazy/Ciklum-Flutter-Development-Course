/*
Ciklum Flutter Course hw #2

Lecture Concepts. Widgets:
1 Stateless widget cannot redraw itself (never changes)
2 Stateful widget reacts to different events
3 Stateful widget is a complex object from 2 classes: MyWidget & _MyWidgetState
4 State - object for keeping widget parameters and build method
5 Good practice keep Widget's class and state's class in one file


Homework
Add the ability to remove an item from the list. Do it as you want.
We suggest choosing one of the variants:
1. Add ‘minus' button to each item in the list.
2. Add swipe action for removing an item.
3. The simplest variant, add one more button to the screen and remove
items in some order.
Additionally, you can try to update UI for items. It can be borders, different
fonts, etc. Just start exploring widget catalog. You can customise our ListTile
for creating more friendly item’s UI.
 */

import 'package:flutter/material.dart';
import 'hw2.dart';
//after replacing main.dart - use full path
//import 'CiklumCourse/Homework2/hw2.dart';

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