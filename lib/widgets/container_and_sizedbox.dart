import 'package:flutter/material.dart';

class containerANDsizedbox extends StatelessWidget {
  const containerANDsizedbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: (const Text("Container_Sizedbox")),
      ),
      body: Center(
        child: Container(

          child:  Center(
            child: Padding(
              padding:  EdgeInsets.all(10.0),
              child:Container(color: Colors.black,child: Center(child: Text("Abhishek", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),)),
                height: 100,
                width: 100,
            )



            /*Text("Abhishek", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),),*/

          ),
          ),
          decoration: const  BoxDecoration(
            color: Colors.cyan,
            boxShadow: [
              BoxShadow(blurRadius: (15),spreadRadius: (10),color: Colors.red),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),

           ),
          height: 150,
          width: 150,
        ),
      ),

      /* SizedBox*/

      /*
        child: SizedBox(
          height: 50,
          width: 100,
          child: Text("Hello"),
        ),*/
    );
  }
}
