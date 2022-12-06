import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8_2/LogIn.dart';
import 'package:lab8_2/SingIn.dart';
import 'package:lab8_2/combonts/colors.dart';

//import 'package:lap8/STC/logIn.dart';
// import 'package:lap8/STC/singIn.dart';
// import 'package:lap8/combonts/colors.dart';
// import 'package:lap8/combonts/logInAndSingInText.dart';

class LineLogIn extends StatelessWidget {
  const LineLogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 12,
      color: dark,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => LogIn())));
              }),
              child: Text(
                "LogIn",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            // UnderLine == true ? const Divider(color: Colors.white) : Text(""),
            InkWell(
              onTap: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => SingIn())));
              }),
              child: Text(
                "Sing In",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
