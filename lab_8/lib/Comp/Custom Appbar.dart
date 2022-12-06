import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text("Welcome"),
            SizedBox(
              height: 10,
            ),
            Image.asset(
              "images/App icon.png",
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
