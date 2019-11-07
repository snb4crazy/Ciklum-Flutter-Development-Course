/*
User Provider - Request API with HTTP package
randomuser.me
 */

import 'package:code_labs/CiklumCourse/Exam/Models/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WeatherProvider {

  final weatherUrl = 'https://randomuser.me/api/';

  Future<User> getCurrentWeather() async {
    final response = await http.get(this.weatherUrl);
    final statusCode = response.statusCode;
    final responseBody = response.body;
    //todo process most common API failed requests
    if (statusCode == 200) {
      return User.fromJson(json.decode(responseBody));
    } else {
      throw Exception('Request Faild to randomuser API');
    }
  }
}