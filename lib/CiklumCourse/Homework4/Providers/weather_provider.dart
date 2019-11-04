/*
Weather Provider - Request API with HTTP package
 */

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:code_labs/CiklumCourse/Homework4/Models/weather.dart';

class WeatherProvider {

  final weatherUrl = 'https://api.openweathermap.org/data/2.5/weather?q=Kharkiv&units=metric&APPID=1ea55013049215603ece3fee22806975';

  Future<Weather> getCurrentWeather() async {
    final response = await http.get(this.weatherUrl);
    final statusCode = response.statusCode;
    final responseBody = response.body;
    //todo process most common API failed requests
    if (statusCode == 200) {
      return Weather.fromJson(json.decode(responseBody));
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}