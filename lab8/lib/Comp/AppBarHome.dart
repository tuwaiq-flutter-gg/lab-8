import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class appbarhome extends StatelessWidget {
  const appbarhome({super.key});

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
                Image.asset("images/undraw_cabin_hkfr 1.png"),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        );
  }
}