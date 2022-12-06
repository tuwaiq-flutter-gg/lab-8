
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8/styles/styles.dart';
import 'package:lab8/views/FirstScreen.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: primaryColor,
        title: Text("Home" , style: TextStyle(fontWeight: FontWeight.w900, fontSize: 32, color: textColor),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const FirstScreen()));
            } , 
            icon: Icon(Icons.logout, color: textColor,)
          ),

          IconButton(
            onPressed: () {

            } , 
            icon: Icon(Icons.location_on, color: textColor,)
          ),
        ],
      );
  }
}