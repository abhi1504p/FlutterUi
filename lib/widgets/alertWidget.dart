import 'package:flutter/material.dart';
class Alertbox extends StatelessWidget {
  const Alertbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert_box"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: ElevatedButton(child:  const Text("Alert"),onPressed: (){
          _myDialog(context);
        },),
      ),
    );

  }
}
Future<void>_myDialog(BuildContext context)async{
  return showDialog(context: context, builder: (BuildContext context){
    return  AlertDialog(
      title:const  Text("Alert"),
      content:const  SingleChildScrollView(
        child: ListBody(
          children: [
            Text("Abhishek"),
            Text("there is fox"),

          ],
        
        ),
      ),
      actions: [
        TextButton(child: const Text("Approve"), onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) =>AppBar(
            backgroundColor: Colors.blue,
            title: const Text("hello abhishek you are approved"),

          ) ,));
        }),
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: const Text("Cancel"))
      ],

    );
  });
}
