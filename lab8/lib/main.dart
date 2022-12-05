import 'package:flutter/material.dart';
import 'package:lab8/pages/locationPage.dart';
import 'package:lab8/pages/login.dart';
import 'package:lab8/pages/signUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      routes: {
        SignUp.screenSign: (context) => SignUp(),
        
      },
    );
  }
}
