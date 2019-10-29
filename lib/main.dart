/*
Google Code Lab 3 - Basic Chat
 */

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:code_labs/GoogleCodeLabs/Chat/chat_base.dart';

//hardcode user name (sender's name)
const String _name = "Your Name";

void main() => runApp(FriendlychatApp());

class FriendlychatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Friendlychat",
      theme: defaultTargetPlatform == TargetPlatform.iOS
          ? kIOSTheme
          : kDefaultTheme,
      home: new ChatScreen(),
    );
  }
}