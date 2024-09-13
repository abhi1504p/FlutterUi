import 'package:flutter/material.dart';

class tabBar extends StatelessWidget {
  const tabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          backgroundColor: Colors.green,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.chat,
                ),
                text: "Chat",
              ),
              Tab(
                icon: Icon(
                  Icons.chat_bubble,
                ),
                text: "Status",
              ),
              Tab(
                icon: Icon(
                  Icons.call,
                ),
                text: "Calls",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Container(
                child: Text("Chats",style: TextStyle(fontSize: 30),),
              ),
            ),
            Center(
              child: Container(
                child: Text("Status",style: TextStyle(fontSize: 30),),
              ),
            ),
            Center(
              child: Container(
                child: Text("Calls",style: TextStyle(fontSize: 30),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
