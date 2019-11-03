
import 'package:flutter/material.dart';
import 'package:code_labs/CiklumCourse/Homework2/models/todo_task.dart';
import 'package:code_labs/CiklumCourse/Homework2/operations/get_todo.dart';
import 'package:code_labs/CiklumCourse/Homework2/operations/create_todo.dart';

class TodoBaseScreen extends StatefulWidget {
  @override
  _TodoBaseScreenState createState() => _TodoBaseScreenState();
}

class _TodoBaseScreenState extends State<TodoBaseScreen> {
  List<TodoTask> todos = [];

  _toggleTodo(TodoTask todo, bool isChecked) {
    setState(() {
      todo.isCompleted = isChecked;
    });
  }

  _addTodo() async {
    final todo = await showDialog<TodoTask>(
      context: context,
      builder: (BuildContext context) {
        return NewTodoDialog();
      },
    );

    if (todo != null) {
      setState(() {
        todos.add(todo);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo List')),
      body: GetTodo(
        todos: todos,
        onTodoToggle: _toggleTodo,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _addTodo,
      ),
    );
  }
}