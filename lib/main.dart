/*
Google Code Lab - First Flutter App part 1

 */

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


void main() => runApp(GoogleCodeLab2());

class GoogleCodeLab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Google Code Lab #2',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}