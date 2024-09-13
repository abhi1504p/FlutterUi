import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListAndGrid extends StatefulWidget {
  const ListAndGrid({super.key});

  @override
  State<ListAndGrid> createState() => _ListAndGridState();
}

class _ListAndGridState extends State<ListAndGrid> {
  @override
  Widget build(BuildContext context) {
    List<String> fruits = ["Orange", "Apple", "Mango", "Lichi", "banana"];
    Map fruit_person = {
      "fruits": ["Orange", "Apple", "Mango", "Lichi", "banana"],
      "name": ["abhishek", "vishal", "om", "anjali", "alfiya"]
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text("L I S T and G R I D"),
        backgroundColor: Colors.blueAccent,
      ),
      body:



          /*  GridView advance version  */

          /*child: GridView.builder(
          itemCount: fruits.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Card(
              child: Center(child: Text(fruits[index])),
            );
          },
        ),*/

          /*  LIST   */
         Container(
          child: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.brown,
              child: ListTile(
                onTap: () {
                  print(fruit_person["name"][index]);
                },
                leading: const Icon(Icons.person),
                title: Text(
                  fruit_person["fruits"][index],
                  style: const TextStyle(fontSize: 30, color: Colors.black),
                ),
                subtitle: Text(
                  fruit_person["name"][index],
                  style: const TextStyle(fontSize: 20, color: Colors.white70),
                ),
              ),
            );
          },
        ),
         ),
    );



  }
}
