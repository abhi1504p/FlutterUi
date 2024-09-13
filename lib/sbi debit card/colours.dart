import 'package:flutter/material.dart';

class Appcolors{
  static  Color backgroundcolors=Colors.deepPurple.shade700;
  static List<BoxShadow>shadows=[
    BoxShadow(
      color: Colors.white.withOpacity(0.5),
      spreadRadius: -5,
      offset: Offset(-5,-5),
      blurRadius: 25,
    ), BoxShadow(
      color: Colors.deepPurple.shade900.withOpacity(0.6),
      spreadRadius: 8,
      offset: Offset(7,7),
      blurRadius: 20,
    ),

  ];
}
