/*
Create Todo Operation
 */

import 'package:flutter/material.dart';
import 'package:code_labs/CiklumCourse/Homework2/models/todo_task.dart';

class NewTodoDialog extends StatelessWidget {

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Write new action todo'),
      content: TextField(
        controller: controller,
        decoration: InputDecoration(hintText: 'Type Todo Description'),
        autofocus: true,
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('Cancel'),
          onPressed: () {
            controller.clear();
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text('Add'),
          onPressed: () {
            final todo = TodoTask(controller.value.text);
            controller.clear();

            Navigator.of(context).pop(todo);
          },
        ),
      ],
    );
  }
}