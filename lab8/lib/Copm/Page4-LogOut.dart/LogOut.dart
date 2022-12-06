import 'package:flutter/material.dart';
import 'package:lab8/constant.dart';

class LogOut extends StatelessWidget {
  const LogOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("Log Out"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container( 
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(15),
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Confirm your log out please ! ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: lightColor,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none),
                      hintText: "Password"),
                )
              ],
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor, minimumSize: Size(150, 40)),
              onPressed: () {},
              child: Text(
                "LogOut",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
        ],
      ),
    );
  }
}
