/*
Details Page of the "Almost Tinder" app
 */

import 'package:flutter/material.dart';
import 'package:code_labs/CiklumCourse/Exam/Pages/base.dart';

class RandomUserDetailsPage extends StatelessWidget {

  //todo migrate to StatefulWidget

  final String title = 'Almost Tinder';

  _getAppBar () {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
        textTheme: _getAppBarThemeData(),
        actions: <Widget>[
          Icon(Icons.settings),
        ],
        leading: Icon(Icons.menu),
      ),
    );
  }

  _getAppBarThemeData() {
    return ThemeData(
      // Define the default brightness and colors.
      brightness: Brightness.dark,
      primaryColor: Colors.lightBlue[800],
      accentColor: Colors.cyan[600],

      // Define the default font family.
      fontFamily: 'Montserrat',

      // Define the default TextTheme. Use this to specify the default
      // text styling for headlines, titles, bodies of text, and more.
      textTheme: TextTheme(
        headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      ),
    );
  }

  _getBaseLayout() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //todo Display Image of the user
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text ('Distance to the User'),
          ],
        ),
        SizedBox(height: 16),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      body: _getBaseLayout(),
    );
  }
}