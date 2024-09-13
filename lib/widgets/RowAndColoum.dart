

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowColoums extends StatelessWidget {
  const RowColoums({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rows_and_Colums"),
        backgroundColor: Colors.purple,
      ),

      body: Container(

        width: w,
        height: 150,
        color: Colors.grey,

        /*Advance version of Rows and Column*/

        child: Wrap(
          direction: Axis.vertical,
         alignment: WrapAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.red,
            ),
            Container(
              height: h,
              width: 50,
              color: Colors.green,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.black,
            ),
            Container(
              height: h,
              width: 50,
              color: Colors.blue,
            ),
            Container(
              height: 50,
              width: w,
              color: Colors.pink,
            ),


          ],
        ),




        /* child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(height: 50,width: 50,color: Colors.red,),
            Container(height: 50,width: 50,color: Colors.green,),
            Container(height: 50,width: 50,color: Colors.black,),
            Container(height: 50,width: 50,color: Colors.blue,),
             Container(height: 50,width: 50,color: Colors.pink,),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(height: 50,width: 50,color: Colors.red,),
            Container(height: 50,width: 50,color: Colors.green,),
            Container(height: 50,width: 50,color: Colors.black,),
            Container(height: 50,width: 50,color: Colors.blue,),
             Container(height: 50,width: 50,color: Colors.pink,),
          ],
        ),



        */
      ),



    );
  }
}
