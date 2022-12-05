import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class tabBar extends StatelessWidget {
  const tabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: Color(0xff569696),
      labelStyle: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
      tabs: [
        Tab(
          text: "Login",
        ),
        Tab(
          text: "Sign Up",
        ),
      ],
    );
  }
}
