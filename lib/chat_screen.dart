import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'app_constant.dart';

class ChatScreen extends StatelessWidget {
  String userName;

  ChatScreen({this.userName = "Chat Screen"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userName, style: TextStyle(fontFamily: ChattyFont.MEDIUM),),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(IMAGE_PATH + "user.png"),
            ),
          ),
        ],
      ),
      body: ChatScreenBody(),
    );
  }
}

class ChatScreenBody extends StatefulWidget {
  @override
  _ChatBodyState createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 8),
          ),
         Expanded(
           child:  ListView(
            children: <Widget>[
               ChatItem(
                    chat: "Hi there,",
                    isMe: false,
                  ),
                  ChatItem(
                    chat: "Hello !!",
                    isMe: true,
                  ),
                  ChatItem(
                    chat: "I'm busy, I'll text you letter",
                    isMe: true,
                  ),
                   ChatItem(
                    chat: "Its okay see you, Bye !!",
                    isMe: false,
                  ),
            ],
          ),
         ),
          messageBar()
        ],
      ),
    );
  }

  Card messageBar() {
    return Card(
      child: Container(
        padding: EdgeInsets.only(left: 12, right: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: TextField(
                dragStartBehavior: DragStartBehavior.down,
                decoration: InputDecoration(
                    hintText: "Write Message", border: InputBorder.none),
              ),
            ),
            Icon(
              Icons.send,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  var isMe = false;
  var chat = "Hi, there";

  ChatItem({this.isMe = false, this.chat = "hi, there"});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: <Widget>[
        Card(
          color: isMe ? Colors.blue : Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  chat,
                  style: TextStyle(
                      fontSize: 14, color: isMe ? Colors.white : Colors.black),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 12),
                ),
                Text(
                  "12:03 pm",
                  style: TextStyle(
                      fontSize: 10,
                      color: isMe ? Colors.white : Colors.black38),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
