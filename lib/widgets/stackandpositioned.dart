import 'package:container_and_sizedbox/sbi%20debit%20card/colours.dart';
import 'package:container_and_sizedbox/sbi%20debit%20card/content.dart';
import 'package:flutter/material.dart';
class StackandPositional extends StatelessWidget {
  const StackandPositional({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DebitCard"),
      backgroundColor: Appcolors.backgroundcolors,),
      backgroundColor: Appcolors.backgroundcolors,
      body: Center(
        child: Container(
          margin: EdgeInsets.all(15),
          height: 250,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(boxShadow: Appcolors.shadows),
          child: content(),
        ),
      ),
    );

  }
}
