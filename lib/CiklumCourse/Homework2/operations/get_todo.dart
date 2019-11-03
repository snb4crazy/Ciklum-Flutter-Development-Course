/*
Get Todo Operation
 */

import 'package:flutter/material.dart';
import 'package:code_labs/CiklumCourse/Homework2/models/todo_task.dart';

typedef ToggleTodoCallback = void Function(TodoTask, bool);

class GetTodo extends StatelessWidget {
  GetTodo({@required this.todos, this.onTodoToggle});

  final List<TodoTask> todos;
  final ToggleTodoCallback onTodoToggle;

  Widget _buildItem(BuildContext context, int index) {
    final todo = todos[index];

    return CheckboxListTile(
      value: todo.isCompleted,
      title: Text(todo.description),
      onChanged: (bool isChecked) {
        onTodoToggle(todo, isChecked);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildItem,
      itemCount: todos.length,
    );
  }
}