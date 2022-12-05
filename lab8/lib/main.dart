import 'package:flutter/material.dart';
import 'package:lab8/login.dart';

Color wcolor = Colors.white;
Color bcolor = Colors.black;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
