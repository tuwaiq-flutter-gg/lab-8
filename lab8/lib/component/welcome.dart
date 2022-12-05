import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 30),
        child: Text(
          "Welcome",
          style: TextStyle(
              color: Color(0xff569696),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: Image.asset("images/undraw_cabin_hkfr 2.png"),
      )
    ]);
  }
}
