import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8/Components/LoginWidget.dart';
import 'package:lab8/Components/SignUpWidget.dart';
import 'package:lab8/Components/tabBar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                backgroundColor: Color(0xffffffff),
                elevation: 0,
                toolbarHeight: MediaQuery.of(context).size.height * 0.2,
                title: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Color(0xffffffff),
                          child: Text(
                            "Welcome",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff569696),
                                fontWeight: FontWeight.bold,
                                fontSize: 32),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        height: 125,
                        width: 125,
                        child: Image.asset("images/welcome.jpg")),
                  ],
                ),
                bottom: PreferredSize(
                  preferredSize: Size(0, 60),
                  child: Material(
                    color: Color(0xff569696),
                    child: tabBar(),
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              LoginWidget(),
              SignUpWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
