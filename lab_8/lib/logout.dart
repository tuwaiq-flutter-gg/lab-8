import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab_8/com/text_filed.dart';
import 'package:lab_8/login.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style1 = ElevatedButton.styleFrom(
        backgroundColor: Color(0xff569696), fixedSize: Size(200, 10));
    return Scaffold(
appBar: AppBar(title: Text("Loguot"),
centerTitle: true,
backgroundColor: Color(0xff569696),
),
body: ListView(children: [
  Center(child: Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Text("Confirrm your log out please ! ",style:TextStyle(fontSize: 24) ,),
  )),
  Center(child: Padding(
    padding: const EdgeInsets.all(20),
    child: Fext_filed(varname: "password",),
  )),
  Padding(
    padding: const EdgeInsets.all(20),
    child: ElevatedButton(
                            style: style1,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>  login(),
                                ),
                              );
                            },
                            child: Text(
                              "Logout",
                              style: TextStyle(fontSize: 30, color: Colors.white),
                            )),
  )

],),
    );
  }
}