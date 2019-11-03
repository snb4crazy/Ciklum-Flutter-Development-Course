/*
Unused Class for testing only
 */

import 'package:flutter/material.dart';

class SingleImagePage extends StatefulWidget {
  SingleImagePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SingleImagePageState createState() => _SingleImagePageState();
}

class _SingleImagePageState extends State<SingleImagePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
                'resources/cats/1.jpg',
                fit: BoxFit.cover)
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}