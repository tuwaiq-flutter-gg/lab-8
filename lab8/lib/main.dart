import 'package:flutter/material.dart';
import 'package:lab8/Copm/Page1-Login.dart/tabBar.dart';
import 'package:lab8/Copm/Page2-SingUp.dart/LocationPrintItOut.dart';
import 'package:lab8/Copm/Page3-HomePage.dart/GoogleMapLocation.dart';
import 'package:lab8/Copm/Page4-LogOut.dart/LogOut.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   
      initialRoute: "HomePage",
      routes: {
        "HomePage" : (context) => HomePage(), 
        "LocationPrintItOut" : (context) => LocationPrintItOut(), 
        "LogOut" :(context) => LogOut(),
        "GoogleMapLocation" :(context) => GoogleMapLocation(),
      },
    );
  }
}
