/*
Google Code Lab 4 - Adding Google Maps to a Flutter App
https://codelabs.developers.google.com/codelabs/google-maps-in-flutter/#0
 */


/*
Todo #1 set API key in android/app/src/main/AndroidManifest.xml
todo #2 set API key in  ios/Runner/AppDelegate.m
todo #3 You also need to add a setting to ios/Runner/Info.plist.
  This entry forces Flutter on iOS into a single threaded mode,
  which is required for the platform view embedding to work.
  This technical restriction is being worked on and will be lifted before
  Google Maps moves out of Developer Preview.

 */


import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(GMapsApp());

class GMapsApp extends StatefulWidget {
  @override
  _GMapsAppState createState() => _GMapsAppState();
}

class _GMapsAppState extends State<GMapsApp> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Maps Sample App'),
          backgroundColor: Colors.green[700],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      ),
    );
  }
}