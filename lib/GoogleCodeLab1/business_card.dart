/*
Basic Flutter layout concepts
https://flutter.dev/docs/codelabs/layout-basics
Tested in DartPad - https://dartpad.dev/
 */

import 'package:flutter/material.dart';

class Part3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                Text('Dymenko Serhii',
                    style: Theme.of(context).textTheme.headline),
                Text('Back End Developer'),
              ],
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text ('8 Derevyanko Str.'),
            Text ('(067)-XXX-XX-XX'),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon (
              Icons.accessibility,
            ),
            Icon (
              Icons.timer,
            ),
            Icon (
              Icons.phone_android,
            ),
            Icon (
              Icons.phone_iphone,
            ),
          ],
        ),
      ],
    );
  }
}