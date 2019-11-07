/*
Main Dart File for Exam: Almost Tinder App

Plan (todos):

1. Get Random User: Model from JSON
2. Parse JSON and convert it to Flutter models
3. Two pages: main & details
4. Main Page: grid: 1 column, 3 rows:
    - Row1 - Image
    - Row2 - User Name
    - Row3 - 2 columns with buttons: Details View & Next User
5. Details Page:
    - Ask permission for phone GPS
    - Calculate distance to the user
    - Layout: Grid: 1 Column, 2 rows: Photo & text with distance

 */

import 'package:flutter/material.dart';
import 'package:code_labs/CiklumCourse/Exam//Models/user.dart';
import 'package:code_labs/CiklumCourse/Exam/Providers/user_provider.dart';

void main() => runApp(Exam());

class Exam extends StatelessWidget {

  final _userProvider = UserProvider();
  final _title = "Almost Tinder";

  _getFutureBuilder () {
    return FutureBuilder<User>(
      future: _userProvider.getNewUser(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return UserContainer(user: snapshot.data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }

  _getAppBar () {
    return AppBar(
      title: Text(this._title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      body: Center(
        child: _getFutureBuilder (),
      ),
    );
  }
}

class UserContainer extends StatelessWidget {
  final User user;

  UserContainer({Key key, @required this.user})
      : assert(UserContainer != null),
        super(key: key);

  //todo add Orientation Views: MediaQuery.of(context).orientation == Orientation.portrait;


  //todo for testing only, use base page (!)
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.network(user.imageUrl),
        Text(
          '${user.name}',
          style: Theme.of(context).textTheme.display1,
          textAlign: TextAlign.center,
        ),
        //testing fake distance
        Text(
          '${user.name} in in ${user.getDistance()} kilometers from you',
          style: Theme.of(context).textTheme.display1,
          textAlign: TextAlign.center,
        ),
      ],
    );;
  }
}