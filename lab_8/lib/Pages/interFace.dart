import 'package:flutter/material.dart';

import 'package:lab_8/Pages/LogIn.dart';
import 'package:lab_8/Pages/Sign%20up.dart';
import 'package:lab_8/assest/Stayl.dart';

class InterFace extends StatefulWidget {
  InterFace({super.key});

  @override
  State<InterFace> createState() => _HomepageState();
}

class _HomepageState extends State<InterFace> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(150),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                      color: Grean, fontSize: 28, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset("images/App icon.png"),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Grean),
              child: TabBar(
                labelColor: Grean,
                indicator: UnderlineTabIndicator(),
                tabs: [
                  Tab(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "SignUp",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  LogIn(),
                  signup(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
