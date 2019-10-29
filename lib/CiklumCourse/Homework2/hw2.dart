import 'package:flutter/material.dart';

List<String> items = ['Item 1', 'Item 2', 'Item 3'];

class TodoList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TodoListState();
  }
}

class TodoListState extends State<TodoList> {

  List<Todo> todoList;
  //todo count items active & deleted

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Todo list")),
        body: _buildList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _addNewItem(context),
          tooltip: 'Add',
          child: Icon(Icons.add),
        )
    );
  }

  _addNewItem(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Write new action todo'),
            content: TextField(
              controller: _textFieldController,
              decoration: InputDecoration(hintText: 'Todo action'),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('CANCEL'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Text('Add'),
                onPressed: () {
                  setState(() {
                    if (_textFieldController.text.length > 0) {
                      items.add(_textFieldController.text);
                      _textFieldController.clear();
                    }
                  });
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        }
    );
  }

  Widget _buildList() {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text(items[index]));
        }
    );
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

TextEditingController _textFieldController = TextEditingController();