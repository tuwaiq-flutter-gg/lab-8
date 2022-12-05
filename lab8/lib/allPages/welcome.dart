import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:lab8/allPages/logouttab.dart';
import 'package:lab8/allPages/signUptab.dart';

class welcomepage extends StatefulWidget {
  const welcomepage({super.key});

  @override
  State<welcomepage> createState() => _welcomepageState();
}

class _welcomepageState extends State<welcomepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text(
                "Welcome",
                style: TextStyle(color: Color(0xff569696)),
              ),
            ),
          ),
          Container(
            height: 120,
            width: 120,
            child: Image.asset("images/Screenshot_20221205_081002.png"),
          ),
          TabBar(
            indicator: BoxDecoration(color: Color(0xff569696) ,  ),
            
            tabs: [
            Tab(
              
              text: "Log in" ,
              
              
            ),
            Tab(
              text: "Sign Up",
            ),
          ]
          ),
         Expanded(child:  TabBarView(children: [
           logintab(),
            signuptab(),
           
          ]))
         
          
              ],
              
            ),
            
          ),
        )
      
    ;
  }
}
