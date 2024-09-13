import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Authentication"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextFormField(
            decoration: InputDecoration(
                hintText: "UserName",
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                helperStyle: TextStyle(fontSize: 20)),
          ),
          TextFormField(
              decoration: InputDecoration(

            hintText: "Password",
            hintStyle: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
            helperText: "Password must contain special character",
            helperStyle: TextStyle(color: Colors.green),
                alignLabelWithHint: false,
                
          ))
        ]),
      ),
    );
  }
}
