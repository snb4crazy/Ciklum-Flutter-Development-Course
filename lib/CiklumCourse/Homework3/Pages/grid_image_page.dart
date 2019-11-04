/*
Main Page of the app - List View of Images
 */

import 'package:flutter/material.dart';
import 'package:code_labs/CiklumCourse/Homework3/Pages/image_details_page.dart';
//todo pick one of these two:
import 'package:image_picker_modern/image_picker_modern.dart';
import 'package:image_picker/image_picker.dart';

class GridImagePage extends StatelessWidget {

  //todo migrate to StatefulWidget
  //todo integrate image picker with a button

  final String title = 'Grid View';

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

  _showImageFromInternet() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _getAppBar(),
        body: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(5),
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          children: <Widget>[
            Ink.image(
              image: AssetImage('images/1.jpg'),
              fit: BoxFit.cover,
              child: InkWell(onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ImageDetailsPage(assetPath: 'images/1.jpg')
                    )
                );
              }),
            ),
            Ink.image(
              image: AssetImage('images/2.jpg'),
              fit: BoxFit.cover,
              child: InkWell(onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ImageDetailsPage(assetPath: 'images/2.jpg')
                    )
                );
              }),
            ),
            Ink.image(
              image: AssetImage('images/3.jpg'),
              fit: BoxFit.cover,
              child: InkWell(onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ImageDetailsPage(assetPath: 'images/3.jpg')
                    )
                );
              }),
            ),
            Ink.image(
              image: AssetImage('images/4.jpg'),
              fit: BoxFit.cover,
              child: InkWell(onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ImageDetailsPage(assetPath: 'images/4.jpg')
                    )
                );
              }),
            ),
            Ink.image(
              image: AssetImage('images/5.jpg'),
              fit: BoxFit.cover,
              child: InkWell(onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ImageDetailsPage(assetPath: 'images/5.jpg')
                    )
                );
              }),
            ),
          ],
        ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add Photo',
        child: Icon(Icons.add_a_photo),
        onPressed: _showImageFromInternet,
      ),
    );
  }
}