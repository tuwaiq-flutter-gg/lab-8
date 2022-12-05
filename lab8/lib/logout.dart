import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8/components/spacing.dart';
import 'package:lab8/components/textfields.dart';
import 'package:lab8/login.dart';

class LogOut extends StatefulWidget {
  const LogOut({super.key});

  @override
  State<LogOut> createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Log Out",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 60, 112, 106),
      ),
      body: ListView(
        children: [
          Spacing(spacing: 80),
          Center(
            child: Text(
              "Confirm your log out please!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          TextF(label: "Password"),
          Spacing(spacing: 80),
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Login()),
                      (Route<dynamic> route) => route is Login);
                });
              },
              child: Text(
                "Log Out",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                  backgroundColor: Color.fromARGB(255, 60, 112, 106)),
            ),
          ),
        ],
      ),
    );
  }
}
