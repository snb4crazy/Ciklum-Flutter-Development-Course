/*
Google Code Lab - First Flutter App part 1 & 2
 */

import 'package:flutter/material.dart';
import 'package:code_labs/GoogleCodeLabs/FirstApp/random_words.dart';


void main() => runApp(GoogleCodeLab2());

class GoogleCodeLab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: RandomWords(),
    );
  }
}