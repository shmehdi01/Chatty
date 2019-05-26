import 'package:flutter/material.dart';

import '../app_constant.dart';

class FirendsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      child: ListView(
        children: <Widget>[
          FirendListItem(
            "Hira Thakur",
            status: "I love Zahar wali kheer",
            isOnline: true,
            chatColor: Colors.amber,
          ),
          FirendListItem(
            "Modi Sarkar",
            status: "Acche din ane wale h",
            time: "24 minutes ago",
          ),
          FirendListItem(
            "Rahul Gandhi",
            chatColor: Colors.redAccent,
          )
        ],
      ),
    );
  }
}

class FirendListItem extends StatelessWidget {
  String _name;
  String status;
  String time;
  bool isOnline;
  Color chatColor;
  VoidCallback onTap;

  FirendListItem(this._name,
      {this.time = "",
      this.status = "I Joined Chatty",
      this.isOnline = false,
      this.chatColor = Colors.blue,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () {
          if (onTap != null) onTap();
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
                      status,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                        fontFamily: ChattyFont.REGULAR,
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  if (!isOnline)
                    Text(
                      time,
                      style: (TextStyle(fontSize: 10, color: Colors.black54)),
                    ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 6),
                  ),
                  if (isOnline)
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.green),
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
