/*
Unused Class for testing only
Testing Homework:
    2. Show an image from the internet by URL.
    1. "Add" button on the list screen and add a new image by a tap
 */

import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:image_picker_modern/image_picker_modern.dart';
import 'dart:async';
import 'dart:io';

class SingleImagePage extends StatefulWidget {
  SingleImagePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SingleImagePageState createState() => _SingleImagePageState();
}

class _SingleImagePageState extends State<SingleImagePage> {

  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

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
            child: _image == null
                ? FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: 'https://ae01.alicdn.com/kf/HTB1q3WgbIUrBKNjSZPxq6x00pXae/Funny-Dog-Cat-Costumes-High-School-Uniform-Cosplay-Suit-Pet-Apparel-Halloween-Christmas-Clothes-For-Puppy.jpg_q50.jpg',
            )
                : Image.file(_image),
          ),
        ],
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}