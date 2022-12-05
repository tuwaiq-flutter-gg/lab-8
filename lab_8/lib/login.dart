import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab_8/Home.dart';
import 'package:lab_8/com/genera.dart';
import 'package:lab_8/com/text_filed.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style1 = ElevatedButton.styleFrom(
        backgroundColor: Color(0xff569696), fixedSize: Size(200, 10));

    bool checkedValue = false;
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: ListView(
        children: [
          Text_1(),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Fext_filed(
                  varname: "Username",
                ),
                Fext_filed(
                  varname: "Password",
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                          style: style1,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>  Home(),
                              ),
                            );
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ))),
                ),
                CheckboxListTile(
                  title: Text("Remember me"),
                  value: checkedValue,
                  onChanged: (bool? newValue) {
                    setState(() {
                      checkedValue = newValue!;
                    });
                  },
                  controlAffinity:
                      ListTileControlAffinity.leading, //  <-- leading Checkbox
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
