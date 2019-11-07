/*
Model for user JSON from API response
Source: randomuser.me

Data needed: Image, Name, GPS coordinates (?)
 */

import 'package:latlong/latlong.dart';

class User {
  final String name;
  final String imageUrl;
  final double latitude;
  final double longitude;
  //todo for testing only set phone coordinates to 0
  final phoneCoordinates = {'lat': 0.0, 'long': 0.0};

  User(this.name, this.imageUrl, this.latitude, this.longitude);

  User.fromJson(Map<String, dynamic> json)
      : name = json['results']['name'] ['first'] + ' ' + json['results']['name'] ['last'],
        imageUrl = json['results']['picture'] ['large'],
        latitude = json['results']['location'] ['coordinates'] ['latitude'],
        longitude = json['results']['location'] ['coordinates'] ['longitude'];

  double getDistance () {

    final Distance distance = Distance();

    final double km = distance.as(LengthUnit.Kilometer,
        LatLng(phoneCoordinates ['lat'], phoneCoordinates ['long']),
        LatLng(latitude,longitude));

    return km;
  }

  //todo method calc distance from phone to user

}