import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Components/Login.dart';
import '../Components/SignUp.dart';

class lab8 extends StatefulWidget {
  const lab8({super.key});

  @override
  State<lab8> createState() => _lab8State();
}

class _lab8State extends State<lab8> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
            "Welcome",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF569696)),
          )),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: 150,
              width: 150,
              child: FittedBox(child: Image.asset("images/ava.png")),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 80,
              color: Color(0xFF569696),
              ///////////////////////////////
              child: TabBar(controller: _tabController, tabs: [
                Tab(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ])),
          Expanded(
            child: Container(
              width: double.maxFinite,
              height: 500,
              /////////////////////////////////////
              child: TabBarView(
                  controller: _tabController, children: [Login(), SignUp()]),
            ),
          )
        ],
      )),
    );
  }
}
