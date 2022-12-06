import 'package:flutter/material.dart';
import 'package:labkhuloudlab8/componet/HomePage.dart';
import 'package:labkhuloudlab8/componet/logen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

 
 Color wcolor = Colors.white;
 Color bcolor = Colors.black;

 void main() {
   runApp(const MyApp());
 }

 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Login(),
       debugShowCheckedModeBanner: false,
     );
   }
 }
