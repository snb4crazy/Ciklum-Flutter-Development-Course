/*
Model for user JSON from API response
Source: randomuser.me

Data needed: Image, Name, GPS coordinates (?)
 */

class User {
  final String name;
  final String imageUrl;
  final int latitude;
  final int longtitude;

  User(this.name, this.imageUrl, this.latitude, this.longtitude);

  //todo User fromJSON converstion

  //todo method calc geoposition by lat/long

  //todo method calc distance from phone to user

}