import 'package:chatty/chatty_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(ChattyApp());
}

class ChattyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white,
          fontFamily: 'poppins_regular'
         ),
      
      home: ChatHome(),
    );
  }
}
