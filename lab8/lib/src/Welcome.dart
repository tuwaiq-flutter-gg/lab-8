// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:lab8/components/LogIn.dart';
import 'package:lab8/components/SignUp.dart';
import 'package:lab8/data/Colors.dart';

class Welcome extends StatefulWidget {
  Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  //bool check = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "Welcome",
                style: TextStyle(
                  color: MainColor,
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "images/undraw_cabin_hkfr 2.png",
              height: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(color: MainColor),
              child: TabBar(
                labelColor: MainColor,
                indicator: UnderlineTabIndicator(),
                tabs: [
                  Tab(
                    child: Text(
                      "Login",
                      style: TextStyle(color: TextColor, fontSize: 25),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "SignUp",
                      style: TextStyle(color: TextColor, fontSize: 25),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.9,
              child: TabBarView(
                children: [
                  LogIn(),
                  SignUp(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
