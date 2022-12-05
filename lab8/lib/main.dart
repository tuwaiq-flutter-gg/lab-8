import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8/allPages/Home.dart';
import 'package:lab8/allPages/logOut.dart';
import 'package:lab8/allPages/signUptab.dart';
import 'package:lab8/allPages/welcome.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: welcomepage(),
    );
  }
}
