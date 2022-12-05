import 'package:flutter/material.dart';
import 'package:lab8/component/textFiled.dart';
import 'package:lab8/pages/login.dart';

class LogOutPage extends StatefulWidget {
  const LogOutPage({super.key});

  @override
  State<LogOutPage> createState() => _LogOutPage();
}

class _LogOutPage extends State<LogOutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Log Out",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff569696),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "Confirm your log out please!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFiledCustome(
            hint: "Password",
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => LoginPage()),
                      (Route<dynamic> route) => route is LoginPage);
                });
              },
              child: Text(
                "Log Out",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                  backgroundColor: Color(0xff569696)),
            ),
          ),
        ],
      ),
    );
  }
}
