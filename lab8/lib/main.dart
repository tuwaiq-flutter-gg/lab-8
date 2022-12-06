import 'package:flutter/material.dart';
import 'package:lab8/src/Welcome.dart';
import 'package:lab8/src/LogOut.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lab8/src/home.dart';

Color gr = Color(0xff569696);
Color ligr = Color(0xffCADEDE);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: wecolme(),
    );
  }
}
