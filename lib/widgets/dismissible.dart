import 'package:flutter/material.dart';
class dismissibes extends StatefulWidget {
  const dismissibes({super.key});

  @override
  State<dismissibes> createState() => _dismissibesState();
}

class _dismissibesState extends State<dismissibes> {
  @override
  Widget build(BuildContext context) {
    List<String> fruits=["orange","apple","mango","banana","grapes"];
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("SnackBar"),
    ),
      body:ListView.builder(itemCount: fruits.length ,itemBuilder:(context, index) {
        final fruit=fruits[index];
          return Dismissible(onDismissed: (direction){
           if(direction==DismissDirection.startToEnd){
             ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]),backgroundColor: Colors.red,),);
           }
           else{
             ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]),backgroundColor: Colors.green,),);

           }
          },
             key: Key(fruit),
            background: Container(color: Colors.red,),
            secondaryBackground: Container(color: Colors.green,),
              child: Card(
                  child: ListTile(title: Text(fruits[index]),),
              ),
          );
      }, ),
    );
  }
}
