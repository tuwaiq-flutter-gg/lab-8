import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8_2/LogOut.dart';

import 'package:lab8_2/combonts/colors.dart';
import 'package:lab8_2/googleMap.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  //Position? position;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dark,
        // leading: IconButton(
        //   icon: Icon(Icons.map),
        //   onPressed: () {
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: ((context) => GoogleMap())));
        //   },
        // ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => LogOut())));
                });
              },
              icon: Icon(Icons.exit_to_app))
        ],
        title: Text(
          "Home",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            //alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height / 4,
            child: Column(children: [
              Image.asset(
                  "images/205628163-bc3c1f05-c232-417d-a316-2692a1e8c556-2.png"),
              Text(
                "This app will help you locate your \n      place and print out easily",
                style: TextStyle(
                    color: dark, fontWeight: FontWeight.bold, fontSize: 18),
              )
            ]),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width,
            color: light,
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "If you need your location you can see it \n                             now!",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold, color: dark),
                  ),
                  SizedBox(
                    height: 40,
                  ),

//================================================
                  InkWell(
                    onTap: (() async {
                      // setState(() {});
                      // LocationPermission permission =
                      //     await Geolocator.checkPermission();
                      // if (permission.name == "denied") {
                      //   Geolocator.requestPermission();
                      // } else {
                      //   try {
                      //     position = await Geolocator.getCurrentPosition(
                      //         desiredAccuracy: LocationAccuracy.high);

                      //     setState(() {});
                      //   } catch (e) {
                      //     print(e.toString());
                      //     Builder(
                      //         builder: (BuildContext context) =>
                      //             Container(child: Text(e.toString())));
                      //   }

                      // showDialog(
                      //     context: context,
                      //     builder: (context) {
                      //       return AlertDialog(
                      //         content: Text(" "),
                      //         shape: RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(10),
                      //         ),
                      //         elevation: 0.0,
                      //         backgroundColor: dark,
                      //       );
                      //     });
                    }),
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 200,
                      color: dark,
                      child: Text(
                        "Print it out",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
