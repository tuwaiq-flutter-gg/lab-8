import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'StartPage.dart';

class LogOut extends StatelessWidget {
  const LogOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF569696),
        centerTitle: true,
        title: Text(
          "Log Out",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Column(children: [
        SizedBox(
          height: 60,
        ),
        SizedBox(
          height: 600,
          width: double.maxFinite,
          child: Column(
            children: [
              Align(
                widthFactor: 1.3,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Confirrm your log out please !",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.only(left: 20, top: 20, right: 20),
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
                height: 50,
              ),
              Center(
                  child: Container(
                height: 50,
                width: 200,
                child: ElevatedButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const lab8())),
                  child: Text(
                    'Log Out',
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
        )
      ]),
    );
  }
}
