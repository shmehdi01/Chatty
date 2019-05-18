import 'package:flutter/material.dart';

class ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 8),
        child: ListView(
          children: <Widget>[
            ChatTile("Rizwan","hahaah","5:24 pm", isRead: false, chatColor: Colors.green ,),
            ChatTile("Jhon","Hey! man","5:24 pm", chatColor: Colors.redAccent,),
            ChatTile("Rock","Okey bro.. c u","5:24 pm", isRead: false,unreadcound: 5,),
           
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

  ChatTile(this._name, this._chat, this._time, {this.isRead = true, this.unreadcound = 1, this.chatColor = Colors.blue});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(bottom: 2),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            child: Text(
              _name[0],
              style: TextStyle(
                  fontFamily: 'poppins_semibold', color: Colors.white),
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
                      fontSize: 16,
                      fontFamily: 'poppins_medium')),
                Text(
                 _chat,
                  style: TextStyle(fontSize: 14, color: Colors.black54),
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
                  child: Center(child: Text("$unreadcound",
                   style: TextStyle(fontSize: 10, color: Colors.white, fontFamily: 'poppins_semibold'),)),
                  height: 15,
                  width: 15,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                )
            ],
          )
        ],
      ),
    );
  }
}
