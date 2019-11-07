/*
User Provider - Request API with HTTP package
randomuser.me
 */

import 'package:code_labs/CiklumCourse/Exam/Models/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserProvider {

  final getUserUrl = 'https://randomuser.me/api/';

  Future<User> getNewUser() async {
    final response = await http.get(this.getUserUrl);
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