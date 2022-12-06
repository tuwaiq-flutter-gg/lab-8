import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab8/views/signUp.dart';

void main() {
  runApp(myApp());
  
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:  false,

      home: signUp(),
    );
  }
}