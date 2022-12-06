
import 'package:flutter/material.dart';
import 'package:lab8/constant.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome' , style: TextStyle(color: primaryColor, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Image.asset("images/undraw_cabin_hkfr 1.png"),
          ],
        ),
      ),
    );
  }
}