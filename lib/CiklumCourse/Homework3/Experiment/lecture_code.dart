/*
Image widget Init:

1. File Image.file - file on the device and as a route, we should use URL to this file.
2. Network Image.network - for showing an image from URL.
3. Asset Image.asset - file from the project. To include as an asset
  - update pubspec.yaml file,
      assets:
      - resources/cats/1.jpg

4. To Open image details page when a user taps on the image in the list:
  - InkWell(
      onTap: () {},
      child: Image.asset(
        'resources/cats/1.jpg',
        fit: BoxFit.cover)
      )
  - Ink.image(
      image: AssetImage('resources/cats/2.jpeg'),
      fit: BoxFit.cover,
      child: InkWell(onTap: () {},),
      )
5. Navigation - open a new page when tapping on the image.
    Navigator widget: push is adding a new page to the top
    and pop is removing the top page from the stack,
    details screen has a constructor with asset parameter.
    So, we can send data from one screen to another.


Homework:

1. During the lesson, we use static GridView for showing content.
    But from the previous lesson, we know about builder.
    Your task is show "Add" button on the list screen and
    add a new image by a tap on the button.
2. Show an image from the internet by URL.
3. Write a title for app bar with a custom font.
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

class ImageDetailsPage extends StatelessWidget {

  final String assetPath;

  ImageDetailsPage({
    Key key, @required this.assetPath
  }) : assert(assetPath != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Details'),),
        body: Center(
          //assetPath example: 'resources/cats/1.jpg'
          child: Image.asset(this.assetPath),)
    );
  }
}

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