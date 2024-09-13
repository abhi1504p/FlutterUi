import 'dart:ui';

import 'package:flutter/material.dart';

class Drawers extends StatelessWidget {
  const Drawers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.pink,
          child: ListView(
            children: [

              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                 /* color: Colors.red,*/
                  padding: const EdgeInsets.all(10),
                  child: const Row(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            "https://images3.alphacoders.com/135/135655.jpg"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Abhishek",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: (25))),
                          Text("abhishek@123",
                              style: TextStyle(
                                fontSize: (18),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const ListTile(
                title: Text("My files"),
                leading: Icon(Icons.folder),
              ),
              const ListTile(
                title: Text("Stared"),
                leading: Icon(Icons.star),
              ),
              const ListTile(
                title: Text("Trash"),
                leading: Icon(Icons.delete),
              ),
              const ListTile(
                title: Text("My Upload"),
                leading: Icon(Icons.upload),
              ),
              const Divider()
                ,
              const ListTile(
                  title: Text("Share"),
                  leading: Icon(Icons.share),
                ),
              const ListTile(
                  title: Text("Logout"),
                  leading: Icon(Icons.logout),
                ),


            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title:const Text("SnackBar"),
      ),
      body: Center(
          child: Container(
        child:const Text("Drawer widget"),
      )),
    );
  }
}
