import 'package:flutter/material.dart';
import 'package:lab8/Copm/Page1-Login.dart/Header.dart';
import 'package:lab8/Copm/Page1-Login.dart/Login.dart';
import 'package:lab8/Copm/Page1-Login.dart/SingUp.dart';
import 'package:lab8/constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Header(),
              Container(
                color: primaryColor,
                child: TabBar(
                  indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(width: 3.0, color: Colors.white),
                        insets: EdgeInsets.symmetric(horizontal:16.0)
                      ),
                  tabs: [
                    Tab(
                      child: Text("Login" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    ),
                    Tab(
                      child: Text("Sing UP" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    ),
                  
                  ],
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Login(),
                    SingUp(),
                  ],
                  controller: _tabController,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



