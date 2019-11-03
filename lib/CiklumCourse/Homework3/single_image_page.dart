/*
Unused Class for testing only
Testing Homework:
    2. Show an image from the internet by URL.
 */

import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

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
      body: Stack(
        children: [
          Center(child: CircularProgressIndicator()),
          Center(
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: 'https://ae01.alicdn.com/kf/HTB1q3WgbIUrBKNjSZPxq6x00pXae/Funny-Dog-Cat-Costumes-High-School-Uniform-Cosplay-Suit-Pet-Apparel-Halloween-Christmas-Clothes-For-Puppy.jpg_q50.jpg',
            ),
          ),
        ],
        ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}