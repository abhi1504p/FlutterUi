import 'package:flutter/material.dart';

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("bottom_widget_sheet"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Colors.red,

                context: context,
                builder: (context) {
                  return  Column(
                    children: [

                      ListTile(
                        title: Text("Abhishek"),
                        subtitle: Text("Prajapati"),
                      ),ListTile(
                        title: Text("Abhishek"),
                        subtitle: Text("Rai"),
                      ),ListTile(
                        title: Text("Arpit"),
                        subtitle: Text("verma"),
                      ),ListTile(
                        title: Text("Abinash"),
                        subtitle: Text("bir"),
                      )

                    ],
                  );
                },
              );
            },
            child: const Text("Bottom_Sheet"),
          ),
        ),
      ),
    );
  }
}
