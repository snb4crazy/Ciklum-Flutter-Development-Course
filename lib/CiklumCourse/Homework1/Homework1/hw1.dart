/*
Dart Concepts:
1 Everything you can place in a variable is an object
2 All objects inherit from the Object class
3 type dynamic - explicitly say that no type is expected
4 The entry point of a Dart class is the main() function
5 Dart supports top-level variables, as well as variables tied to a class or object
6 Dart doesn't have public/protected/private. Private - starts with underscore "_"
7 Use final when you don't plan to change the value later on.
8 Prefer const when the value is known during compilation. Otherwise use var
9 When the model is known, prefer classes
10 Always prefer const constructors and final properties in classes
 */


import 'package:flutter/material.dart';

//Variables
int a = 8;
double b = 3.5;
num c = 34; // integer or double
String str = 'Dart';
bool flag = false;

final list = [1, 'abc', 2.1];
final generic = <int>[1,2,3];

final map = {'firstname': 'John', 'lastname': 'Smith', 'age': 20.3};
final keys = map.keys;
final values = map.values;
final firstName = map ['firstname'];

//Functions definition looks like this:
int multiply(int a, int b) {
  return a * b;
}