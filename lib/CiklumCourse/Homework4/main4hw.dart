/*
Main Dart File for homework #4: Network and Futures. Plan:

1. Fetch data from internet
2. Parse JSON and convert it to Flutter models
3. What is Future
4. Display images from internet
5. Homework - device rotation (full screen for horizontal)

Weather data from openweathermap.org using url:
   https://api.openweathermap.org/data/2.5/weather?q=Kharkiv&units=metric&APPID=1ea55013049215603ece3fee22806975

 */

import 'package:flutter/material.dart';
import 'package:code_labs/CiklumCourse/Homework4/Models/weather.dart';
import 'package:code_labs/CiklumCourse/Homework4/Providers/weather_provider.dart';

void main() => runApp(Homework4BaseApp());

class Homework4BaseApp extends StatelessWidget {

  final _weatherProvider = WeatherProvider();
  final _title = "Weather Overview";

  _getFutureBuilder () {
    return FutureBuilder<Weather>(
      future: _weatherProvider.getCurrentWeather(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return WeatherContainer(weather: snapshot.data);
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

class WeatherContainer extends StatelessWidget {
  final Weather weather;

  WeatherContainer({Key key, @required this.weather})
      : assert(weather != null),
        super(key: key);

  _getPortraitView (context) {
    return Column(
      children: <Widget>[
        Text(
          '${weather.locationName} - ${weather.temperature} °C',
          style: Theme.of(context).textTheme.display1,
          textAlign: TextAlign.center,
        ),
        Image.network(weather.iconUrl),
      ],
    );
  }

  _getLandscapeView (context) {
    return Row (
      //Positions children near the start/end/center/spaceBetween/spaceEvenly
      mainAxisAlignment: MainAxisAlignment.end,
      //positions children on their cross axes (for Row - vertical): start/end/center/stretch
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: <Widget>[
            Text(
              '${weather.locationName}',
              style: Theme.of(context).textTheme.display1,
              textAlign: TextAlign.center,
            ),
            Text(
              '${weather.temperature} °C',
              style: Theme.of(context).textTheme.display1,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Image.network(weather.iconUrl),
          ],
        ),
    ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return _getPortraitView(context);
        } else {
          return _getLandscapeView(context);
        }
      },
    );
  }
}