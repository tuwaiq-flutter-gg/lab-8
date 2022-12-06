// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lab8/components/Button.dart';
import 'package:lab8/components/GeoPermisions.dart';
import 'package:lab8/data/Colors.dart';
import 'package:lab8/src/GoogleMap.dart';
import 'package:lab8/src/LogOut.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Position? position;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        backgroundColor: MainColor,
        leading: TextButton(
          onPressed: () {
            if (position != null) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MapSample(
                    position: position!,
                  ),
                ),
              );
            } else {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: MainColor,
                  insetPadding: EdgeInsets.zero,
                  content: Text(
                    "Choose Location First",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: AlertColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            }
          },
          child: Image.asset("images/arcticons_google-maps-alt.png"),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LogOut()));
            },
            icon: Icon(
              Icons.exit_to_app_outlined,
              size: 40,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: IconButton(
                onPressed: () async {
                  try {
                    position = await determinePosition();
                    setState(() {});
                  } catch (e) {
                    print("Error first");
                  }
                },
                icon: Icon(
                  Icons.location_pin,
                  color: MainColor,
                  size: 50,
                )),
          ),
          IconButton(
              onPressed: () async {
                try {
                  position = await determinePosition();
                  print(position);
                  setState(() {});
                } catch (e) {
                  print("Error Second");
                }
              },
              icon: Icon(
                Icons.map,
                color: MainColor,
                size: 50,
              )),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Center(
              child: Text(
                "This app will help you locate your place and print out easily",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: SubColor),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "If you need your location you can see it now!",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.normal),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomButton(
                          title: "Print It Out",
                          onPressed: () {
                            if (position != null) {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  backgroundColor: MainColor,
                                  insetPadding: EdgeInsets.zero,
                                  content: Text(
                                    "Your Location is \n\n${position.toString()}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: TextColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  backgroundColor: MainColor,
                                  insetPadding: EdgeInsets.zero,
                                  content: Text(
                                    "Choose Location First",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: AlertColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                        SizedBox(
                          height: 50,
                        )
                      ]),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
