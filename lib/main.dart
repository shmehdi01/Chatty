import 'package:chatty/chat_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChattyApp());
}

class ChattyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatHome(),
    );
  }
}
