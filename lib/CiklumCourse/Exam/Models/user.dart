/*
Model for user JSON from API response
Source: randomuser.me

Data needed: Image, Name, GPS coordinates (?)
 */

class User {
  final String name;
  final String imageUrl;
  final int latitude;
  final int longitude;

  User(this.name, this.imageUrl, this.latitude, this.longitude);

  User.fromJson(Map<String, dynamic> json)
      : name = json['results']['name'] ['first'] + ' ' + json['results']['name'] ['last'],
        imageUrl = json['results']['picture'] ['large'],
        latitude = json['results']['location'] ['coordinates'] ['latitude'],
        longitude = json['results']['location'] ['coordinates'] ['longitude'];

  //todo method calc geoposition by lat/long

  //todo method calc distance from phone to user

}