import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8/Comp/button.dart';
import 'package:lab8/Comp/textfield.dart';
import 'package:lab8/main.dart';

class logout extends StatelessWidget {
  logout({super.key});
  TextEditingController psCO = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.white,
  
      appBar: AppBar(
        title: Text(
          "LogOut",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        backgroundColor: gr,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              "Confirrm your log out please ! ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          textfield(co: psCO, Title: "Password"),
          SizedBox(
            height: 50,
          ),
          Center(
            child: button(
              title: "LogOut",
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          SizedBox(
            height: 300,
          ),
        ],
      ),
    ));
  }
}
