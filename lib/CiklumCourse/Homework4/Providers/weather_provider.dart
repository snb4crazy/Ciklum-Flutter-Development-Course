/*
Weather Provider - Request API with HTTP package
 */

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WeatherProvider {

  final weatherUrl = 'https://api.openweathermap.org/data/2.5/weather?q=Kharkiv&units=metric&APPID=1ea55013049215603ece3fee22806975';

  Future<http.Response> getCurrentWeather() async {
    final response = await http.get(this.weatherUrl);
    final statusCode = response.statusCode;
    final responseBody = response.body;
    return response;
  }
}