import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab8/classes/user.dart';
import 'package:lab8/pages/loginPage.dart';
import 'style.dart';

user u = user(username: "rakan", password: "rakan123");
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        buttonTheme: ButtonTheme.of(context).copyWith(buttonColor: greenBlue),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      title: 'Material App',
      home: LoginPage(tempUser: u),
    );
  }
}
