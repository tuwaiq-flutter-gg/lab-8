import 'package:flutter/material.dart';

import 'package:my_lab8/views/logout.dart';
import 'package:my_lab8/views/myMap.dart';
import 'package:my_lab8/views/mylogin.dart';
import 'package:my_lab8/views/signUp.dart';
import 'package:my_lab8/views/home.dart';

main(){
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: loginPafe(),
    );
  }
}