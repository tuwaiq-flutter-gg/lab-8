import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:lab8_/combonts/colors.dart';
import 'package:lab8_2/combonts/colors.dart';
//import 'package:lap8/combonts/colors.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            "Welcome",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: dark),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 130,
            width: 130,
            child: Image.asset(
              "images/205628163-bc3c1f05-c232-417d-a316-2692a1e8c556.png",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
