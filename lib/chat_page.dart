import 'package:flutter/material.dart';

class ChatHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatBody() ,
    );
  }
}

class ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("chatty"),);
  }
}