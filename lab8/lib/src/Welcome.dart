import 'package:flutter/material.dart';
import 'package:lab8/Comp/Login.dart';

import 'package:lab8/Comp/button.dart';
import 'package:lab8/Comp/signup.dart';
import 'package:lab8/Comp/textfield.dart';
import 'package:lab8/main.dart';

class wecolme extends StatefulWidget {
  wecolme({super.key});

  @override
  State<wecolme> createState() => _HomepageState();
}

class _HomepageState extends State<wecolme> {
  // TextEditingController nameCO = TextEditingController();
  // TextEditingController psCO = TextEditingController();
  // TextEditingController ps1CO = TextEditingController();
  // TextEditingController emailco = TextEditingController();

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
                      color: gr, fontSize: 28, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset("images/undraw_cabin_hkfr 1.png"),
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
              decoration: BoxDecoration(color: gr),
              child: TabBar(
                labelColor: gr,
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
                  log(),
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
