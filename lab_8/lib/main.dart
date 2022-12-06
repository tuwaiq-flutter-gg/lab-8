import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_8/Pages/LogIn.dart';
import 'package:lab_8/Pages/LogOut.dart';
import 'package:lab_8/Pages/Sign%20up.dart';
import 'package:lab_8/Pages/interFace.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InterFace(),
    );
  }
}
