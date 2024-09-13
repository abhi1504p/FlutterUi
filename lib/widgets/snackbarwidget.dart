import 'package:flutter/material.dart';

class Snackbarwidget extends StatelessWidget {
  const Snackbarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("SnackBar"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  final snackbars = SnackBar(
                    action: SnackBarAction(label: "undo",onPressed: (){},textColor: Colors.blue,),
                    content: Text("Error",style: TextStyle(fontSize: 20),),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    behavior:SnackBarBehavior.floating,
                    backgroundColor: Colors.white
                    ,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbars);
                },
                child: (Text("Press Button", style: TextStyle(fontSize: 20))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
