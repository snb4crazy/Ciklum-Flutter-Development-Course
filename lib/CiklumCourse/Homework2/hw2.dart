import 'package:flutter/material.dart';

List<String> items = ['Item 1', 'Item 2', 'Item 3'];

class TodoList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TodoListState();
  }
}

class TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Todo {

  //todo decide what Class Properties are needed
  //todo implement autoincrement
  int _id;
  String _description;

  Todo (this._description);

  void set description(String description) {
    if(description.length <= 20) {
      this._description = description;
    } else {
      this._description = '${description.substring(0, 20)}...';
    }
  }

  String get description {
    return this._description;
  }
}