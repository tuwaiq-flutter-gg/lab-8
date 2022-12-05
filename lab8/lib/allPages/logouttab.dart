import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Home.dart';

class logintab extends StatefulWidget {
  const logintab({super.key});

  @override
  State<logintab> createState() => _logintabState();
}

class _logintabState extends State<logintab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      SizedBox(
        height: 20,
      ),
      Container(
        height: 61,
        width: 380,
        child: TextField(
          decoration: InputDecoration(
              filled: true,
              labelText: "UserName",
              fillColor: Color(0xffCADEDE)),
        ),
      ),
      Container(
        height: 61,
        width: 380,
        child: TextField(
          decoration: InputDecoration(
              filled: true, labelText: "Password", fillColor: Color(0xffCADEDE)),
        ),
      ),
      Container(
                height: 46,
                width: 120,
                color: Color(0xff569696) ,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xff569696)),
                  onPressed: (){
                    Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => Home()));
                  }, child: Text("Log in",style: TextStyle(fontWeight: FontWeight.bold))),
              )
          
    ])));
  }
}
