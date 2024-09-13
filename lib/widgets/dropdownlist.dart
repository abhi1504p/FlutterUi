import 'package:flutter/material.dart';

class Dropdownlsit extends StatefulWidget {
  const Dropdownlsit({super.key});

  @override
  State<Dropdownlsit> createState() => _DropdownlsitState();
}

class _DropdownlsitState extends State<Dropdownlsit> {
  String selectedstring = "Orange";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop_Down_list"),
        backgroundColor: Colors.white54,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: DropdownButton<String>(value: selectedstring,
                isExpanded: true,
                icon: Icon(Icons.arrow_circle_down),
                onChanged: (String? newvalue) {
                  setState(() {
                    selectedstring = newvalue!;
                  });
                },
                items: <String>[
                  "Orange",
                  "Apple",
                  "Banana",
                  "Mango",
                  "Lichi",
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
