import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Imagewidget extends StatelessWidget {
  const Imagewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text("Image_Widget"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 250,

          child:DecoratedBox(decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            boxShadow: const [

              BoxShadow(color: Colors.white,
              blurRadius: 8,
              spreadRadius: 2,
              ),



            ],
            color: Colors.blue,
            image: const DecorationImage(


              fit: BoxFit.cover,
              image: AssetImage(
                "assets/259314.jpg",
              ),



            ),

          ),) ,
        ),
      ) ,
    );
  }
}
