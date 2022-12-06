import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../pages/Home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var isCheck = false;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFCADEDE),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xFFCADEDE), width: 2)),
                border: InputBorder.none,
                hintText: "Username",
              ),
            )),
        SizedBox(
          height: 10,
        ),
        Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFCADEDE),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xFFCADEDE), width: 2)),
                border: InputBorder.none,
                hintText: "Password",
              ),
            )),
        SizedBox(
          height: 10,
        ),
        Center(
            child: Container(
          height: 50,
          width: 200,
          child: ElevatedButton(
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Home())),
            child: Text(
              'Login',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
                primary: Color(0xFF569696), padding: EdgeInsets.all(10)),
          ),
        )),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: isCheck,
              onChanged: (value) {
                setState(() => isCheck = value!);
              },
            ),
            Text(
              "Remember me ",
              style: TextStyle(color: Color(0xFF878484), fontSize: 20),
            )
          ],
        )
      ],
    );
  }
}
