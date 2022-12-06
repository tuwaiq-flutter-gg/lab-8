
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:labkhuloudlab8/componet/HomePage.dart';
import 'package:labkhuloudlab8/componet/logen.dart';
import 'package:labkhuloudlab8/componet/spesis.dart';
import 'package:labkhuloudlab8/componet/textfieelds.dart';
import 'package:labkhuloudlab8/main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SignUp extends StatefulWidget {
   const SignUp({super.key});

   @override
   State<SignUp> createState() => _SignUpState();
 }

 class _SignUpState extends State<SignUp> {
   TextEditingController nameControler = new TextEditingController();
   TextEditingController emailcon = new TextEditingController();
   TextEditingController pwdControler = new TextEditingController();
   TextEditingController confpwd = new TextEditingController();

   String _msg = "";
   bool check = false;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
         backgroundColor: wcolor,
         body: ListView(
           children: [
             Center(
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text(
                   "Welcome",
                   style: TextStyle(
                       fontSize: 30,
                       fontWeight: FontWeight.bold,
                       color: Color.fromARGB(255, 20, 101, 90)),
                 ),
               ),
             ),
             Center(child: Image.asset("images/logo.png")),
             Spacing(spacing: 20),
             Container(
               color: Color.fromARGB(255, 20, 101, 90),
               height: MediaQuery.of(context).size.width / 8,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   TextButton(
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
                         "Login",
                         style: TextStyle(color: wcolor, fontSize: 30),
                       )),
                   TextButton(
                       onPressed: () {},
                       child: Text(
                         "Sign Up",
                         style: TextStyle(
                           color: wcolor,
                           fontSize: 30,
                           decoration: TextDecoration.underline,
                         ),
                       )),
                 ],
               ),
             ),
             Spacing(spacing: 10),
             TextF(label: "Username"),
             Spacing(spacing: 10),
             TextF(label: "Email"),
             Spacing(spacing: 10),
             TextF(label: "Password"),
             Spacing(spacing: 10),
             TextF(label: "Confirm Password"),
             Spacing(spacing: 20),
             Center(
               child: ElevatedButton(
                 onPressed: () {
                   setState(() {
                     Navigator.pushAndRemoveUntil(
                         context,
                         MaterialPageRoute(
                             builder: (BuildContext context) => HomePage()),
                         (Route<dynamic> route) => route is HomePage);
                   });
                 },
                 child: Text(
                   "Sign Up",
                   style: TextStyle(fontSize: 30),
                 ),
                 style: ElevatedButton.styleFrom(
                     padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                     backgroundColor: Color.fromARGB(255, 60, 112, 106)),
               ),
             ),
           ],
         ));
   }
 }
