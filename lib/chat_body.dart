import 'package:chatty/chat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_constant.dart';

class ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 8),
        child: ListView(
          children: <Widget>[
            ChatTile(
              "Rizwan",
              "hahaah",
              "5:24 pm",
              isRead: false,
              chatColor: Colors.green,
              onTap: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context) => ChatScreen(userName: "Rizwan",)));
              },
            ),
            ChatTile(
              "Jhon",
              "Hey! man",
              "9:01 pm",
              chatColor: Colors.redAccent,
              onTap: (){
                 Navigator.push(context, CupertinoPageRoute(builder: (context) => ChatScreen(userName: "Jhon",)));
              },
            ),
            ChatTile(
              "Richard Kie",
              "Flutter is awesome bro",
              "Yesterday",
              isRead: false,
              unreadcound: 5,
              onTap: (){
                 Navigator.push(context, CupertinoPageRoute(builder: (context) => ChatScreen(userName: "Richard Kie",)));
              },
            ),
          ],
        ));
  }
}

class ChatTile extends StatelessWidget {
  String _name;
  String _chat;
  String _time;
  bool isRead = true;
  int unreadcound = 0;
  Color chatColor;
  VoidCallback onTap;

  ChatTile(this._name, this._chat, this._time,
      {this.isRead = true, this.unreadcound = 1, this.chatColor = Colors.blue, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () {
         if(onTap != null) onTap();
        },
        child: Container(
          padding: EdgeInsets.all(12),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                child: Text(
                  _name[0],
                  style: TextStyle(
                      fontFamily: ChattyFont.SEMIBOLD, color: Colors.white),
                ),
                backgroundColor: chatColor,
              ),
              Padding(
                padding: EdgeInsets.only(right: 12),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(_name,
                        style: TextStyle(
                            fontSize: 16, fontFamily: ChattyFont.MEDIUM)),
                    Text(
                      _chat,
                      style: TextStyle(
                          fontSize: 14,
                          color: isRead ? Colors.black54 : Colors.black87,
                          fontFamily: isRead
                              ? ChattyFont.REGULAR
                              : ChattyFont.MEDIUM),
                    )
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    _time,
                    style: (TextStyle(fontSize: 10, color: Colors.black54)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 6),
                  ),
                  if (!isRead)
                    Container(
                      child: Center(
                          child: Text(
                        "$unreadcound",
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontFamily: ChattyFont.SEMIBOLD),
                      )),
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue),
                    )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
