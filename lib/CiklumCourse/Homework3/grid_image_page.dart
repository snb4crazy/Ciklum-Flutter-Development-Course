/*
Main Page of the app - List View of Images
 */

import 'package:flutter/material.dart';
import 'package:code_labs/CiklumCourse/Homework3/image_details_page.dart';

class GridImagePage extends StatelessWidget {

  final String title = 'Grid View';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
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
        )
    );
  }
}