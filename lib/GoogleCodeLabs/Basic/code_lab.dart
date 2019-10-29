/*
Basic Flutter layout concepts
https://flutter.dev/docs/codelabs/layout-basics
Tested in DartPad - https://dartpad.dev/
 */

import 'package:flutter/material.dart';

//Creating a Column
class MyRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      //Positions children near the start/end/center/spaceBetween/spaceEvenly
      mainAxisAlignment: MainAxisAlignment.end,
      //positions children on their cross axes (for Row - vertical): start/end/center/stretch
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BlueBox(),
        BiggerBlueBox(),
        BlueBox(),
        //Row and Column have fixed size (inflexible)
        //The Flexible widget wraps a widget, so the widget becomes resizable
        Flexible(
          fit: FlexFit.loose,
          flex: 1,
          child: BlueBox(),
        ),
        Flexible(
          fit: FlexFit.tight,
          flex: 5,
          child: BlueBox(),
        ),
      ],
    );
  }
}

//Similar to Flexible, the Expanded widget can wrap a widget and force the widget to fill extra space
class MyExpandedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlueBox(),
        Expanded(
          child: BlueBox(),
        ),
        BlueBox(),
      ],
    );
  }
}

//SizedBox widget can be used in one of two ways when creating exact dimensions
class MySizedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlueBox(),
        SizedBox(width: 100),
        BlueBox(),
        SizedBox(
          width: 100,
          height: 100,
          child: BlueBox(),
        ),
      ],
    );
  }
}

//Similar to SizedBox, the Spacer widget also can create space between widgets.
class MySpacerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlueBox(),
        //takes all free space
        Spacer(flex: 1),
        BlueBox(),
        BlueBox(),
      ],
    );
  }
}

class MyTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          'Hey!',
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'Futura',
            color: Colors.blue,
          ),
        ),
        Text(
          'Hey!',
          style: TextStyle(
            fontSize: 50,
            fontFamily: 'Futura',
            color: Colors.green,
          ),
        ),
        Text(
          'Hey!',
          style: TextStyle(
            fontSize: 40,
            fontFamily: 'Futura',
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}

class MyIconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Icon(
          Icons.widgets,
          size: 50,
          color: Colors.blue,
        ),
        Icon(
          Icons.widgets,
          size: 50,
          color: Colors.red,
        ),
      ],
    );
  }
}

class MyImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network('https://urlzs.com/RsqCz'),
      ],
    );
  }
}



class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}

class BiggerBlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}

/*
Homework: Putting it all together
 */
class Part1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Begin implementing the Column here.
    return Column (
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text (
          'Dymenko Serhii',
          style: Theme.of(context).textTheme.headline,
        ),
        Text (
            'Back End Developer'
        ),
      ],
    );

  }
}

class Part2a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row (
      children: [
        Padding (
          padding: const EdgeInsets.all (8.0),
          child: Icon (Icons.account_circle, size: 50.0),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dymenko Serhii',
              style: Theme.of(context).textTheme.headline,
            ),
            Text(
              'Back End Developer',
            ),
          ],
        )
      ],
    );
  }
}

class Part2b extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column (
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.account_circle, size: 50)),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Dymenko Serhii',
                    style: Theme.of(context).textTheme.headline),
                Text('Back End Developer'),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 8.0,
        ),
        Row (),
        SizedBox(height: 16.0),
        Row (),

      ],
    );
  }
}

class Part2c extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column (
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.account_circle, size: 50)),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Dymenko Serhii',
                    style: Theme.of(context).textTheme.headline),
                Text('Back End Developer'),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 8.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text ('8 Derevyanko Str.'),
            Text ('(067)-XXX-XX-XX'),
          ],
        ),
        SizedBox(height: 16.0),
        Row (),

      ],
    );
  }
}

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