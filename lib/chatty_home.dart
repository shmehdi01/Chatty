import 'package:chatty/presentations/chatty_icons_icons.dart';
import 'package:flutter/material.dart';
import 'app_constant.dart';
import 'chat_body.dart';
import 'friends_body.dart';

class ChatHome extends StatefulWidget {
  @override
  _ChatHomeState createState() => _ChatHomeState();
}

class _ChatHomeState extends State<ChatHome> {

 int _selectedIndex = 0;

  AppBar topbar() {
    return AppBar(
      elevation: 0.5,
      centerTitle: false,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundImage: AssetImage(IMAGE_PATH + "user.png"),
        ),
      ),
      title: Text(
        APP_NAME,
        style: TextStyle(fontFamily: 'poppins_semibold'),
      ),
    );
  }

  BottomNavigationBar bottomNav(){
    return BottomNavigationBar(
      elevation: 5,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(title: Text('Chats'), icon: Icon(ChattyIcons.chat)),
        BottomNavigationBarItem(
            title: Text('Persons'), icon: Icon(ChattyIcons.people)),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.black87,
      iconSize: 20,
      selectedFontSize: 12,
      backgroundColor: Colors.white,
      onTap: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topbar(),
      body: _selectedIndex == 0 ? ChatBody() : FirendsBody(),
      bottomNavigationBar: bottomNav(),
    );
  }
}
