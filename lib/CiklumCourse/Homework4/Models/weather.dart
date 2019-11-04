/*
Model for weather JSON from API response
 */

class Weather {
  final int temperature;
  final String locationName;
  final String iconUrl;

  Weather(this.temperature, this.locationName, this.iconUrl);
}