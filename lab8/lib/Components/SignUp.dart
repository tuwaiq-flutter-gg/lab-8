import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../pages/Home.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFCADEDE),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: Color(0xFFCADEDE), width: 2)),
                  border: InputBorder.none,
                  hintText: "Username",
                ),
              )),
          SizedBox(
            height: 5,
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFCADEDE),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: Color(0xFFCADEDE), width: 2)),
                  border: InputBorder.none,
                  hintText: "Email",
                ),
              )),
          SizedBox(
            height: 5,
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFCADEDE),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: Color(0xFFCADEDE), width: 2)),
                  border: InputBorder.none,
                  hintText: "Password",
                ),
              )),
          SizedBox(
            height: 5,
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFCADEDE),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: Color(0xFFCADEDE), width: 2)),
                  border: InputBorder.none,
                  hintText: "Confirm Password",
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Container(
            height: 50,
            width: 200,
            child: ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home())),
              child: Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFF569696), padding: EdgeInsets.all(10)),
            ),
          )),
        ],
      ),
    );
  }
}
