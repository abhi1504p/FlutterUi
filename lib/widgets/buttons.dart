import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("B U T T O N S"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  elevation: MaterialStateProperty.all(5),
                  overlayColor: MaterialStateProperty.all(Colors.cyan),
                ),
                child: const Text(
                  "Text Button",
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              child: SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(Colors.yellow),
                      foregroundColor: MaterialStateProperty.all(Colors.pink),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),

                    ),
                    onPressed: () {
                      print("button is pressed");
                    },
                    child: const Text(
                      "Text Button",
                      style: TextStyle(fontSize: 30, color: Colors.blueAccent),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
