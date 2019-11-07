/*
Base Page of the "Almost Tinder" app
 */

import 'package:flutter/material.dart';
import 'package:code_labs/CiklumCourse/Exam/Pages/details.dart';

class RandomUserPage extends StatelessWidget {

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
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.account_circle, size: 50)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                //todo put image
              ],
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text ('Name of Random User'),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //todo replace icons with buttons
          children: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                /* todo get new user */
              },
            ),
            IconButton(
              icon: Icon(Icons.skip_next),
              onPressed: () {
                /* todo redirect to details */
              },
            ),
          ],
        ),
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