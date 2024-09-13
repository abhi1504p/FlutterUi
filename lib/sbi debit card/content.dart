import 'package:flutter/material.dart';

class content extends StatelessWidget {
  const content({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
              right: -150,
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(.03)),
              )),
          Positioned(
              left: -200,
              bottom: -470,
              child: Container(
                height: 600,
                width: 600,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(.03)),
              )),
          Positioned(
              bottom: 15,
              right: 15,
              child: Container(
                height: 40,
                width: 70,
                child: const Text(
                  "VISA",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              )),
          Positioned(
              bottom: 182,
              right: 10,
              child: Container(
                height: 80,
                width: 90,

                child: Image.asset("assets/sbi.png"),
              )),Positioned(
              top: 3,
              right: 337,
              child: Container(
                height: 40,
                width: 50,
                child: Image.asset("assets/indianoil.png"),
              )),Positioned(
              top: 3,
              right: 237,
              child: Container(
                height: 40,
                width: 100,

                child: const Text("Indian Oil",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              )),
          Positioned(
              top: 43,
              right: 267,
              child: Container(
                height: 100,
                width: 130,
                child: Image.asset("assets/chip.png"),
              )),
          Positioned(
              top: 43,
              right: 167,
              bottom: 90,
              child: Container(
                height: 100,
                width: 130,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/petrol pump.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
              ))),
        Positioned(
    top: 121,
    right: 122,
        child: Container(
        height: 100,
        width: 100,

    decoration: BoxDecoration(color: Colors.orange.shade900.withOpacity(.9),


    shape: BoxShape.circle
    ),
    )),
          Positioned(
              top: 81,
              right: 122,
              child: Container(
                height: 100,
                width: 100,
                child: Image.asset("assets/fuel.png",opacity: const AlwaysStoppedAnimation(.5) ,),
              )),
          const Positioned(
            top: 170,
            right: 100,
            child: Text("2375 3289 1209 3484",style: TextStyle(fontSize:27,fontWeight: FontWeight.bold,color: Colors.black),),
          ),
             const Positioned(
              top: 205,
              right: 152,
                child: Text("ABHISHEK PRJAPATI",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.black87),),
              ) ,



        ],
      ),
    );
  }
}
