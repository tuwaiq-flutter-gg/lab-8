

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lab88/components/lognin.dart';
import 'package:lab88/components/page3.dart';
import 'package:lab88/components/singup.dart';
import 'package:url_launcher/url_launcher.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Uri url = Uri.parse('https://www.google.com/maps/@,45.081137,5z');

  Position? position;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("${position}"),
          Center(
            child: Container(
                child: ElevatedButton(
                    onPressed: (() async {
                      LocationPermission permission =
                          await Geolocator.checkPermission();
                      if (permission.name == "denied") {
                        Geolocator.openAppSettings();
                      } else {
                        try {
                          position = await Geolocator.getCurrentPosition(
                              desiredAccuracy: LocationAccuracy.high);
                          setState(() {});
                        } catch (error) {
                          print(error);
                        }
                      }
                    }),
                    child: Icon(Icons.mail))),
          ),
          // ignore: avoid_print

          ElevatedButton(
              onPressed: () {
               

launchUrl(url);

               setState(() {
                 
                 url = Uri.parse('https://www.google.com/maps/@${position!.altitude},${position!.longitude}');
               });
              },
              child: Container(
                child: Text("open gogle man"),
              ))
        ],
      ),
    );
  }
}
