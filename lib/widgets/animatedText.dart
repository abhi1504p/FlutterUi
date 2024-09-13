import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Animatedtext extends StatelessWidget {
  const Animatedtext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated_Text"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          /*AnimatedTextKit(
            animatedTexts: [
              RotateAnimatedText("Abhishek",
                  textStyle: TextStyle(
                      color: Colors.red,
                      fontSize: 50.4,
                      fontWeight: FontWeight.bold))
            ],
            totalRepeatCount: 5,
            displayFullTextOnTap: true,
            pause: Duration(seconds: 3),
          ),*/
          SizedBox(
            height: 10,
          ),
          Center(
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText("Abhishek Prajapati",
                    textStyle: TextStyle(
                        color: Colors.red,
                        fontSize: 20.4,
                        fontWeight: FontWeight.bold)),
              ],
              totalRepeatCount: 5,
              displayFullTextOnTap: true,
              pause: Duration(seconds: 3),
            ),
          )
        ],
      ),
    );
  }
}
