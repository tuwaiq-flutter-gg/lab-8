import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'package:lab_8/Comp/Custom%20Button.dart';
import 'package:lab_8/assest/Prom.dart';
import 'package:lab_8/assest/Stayl.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _homeState();
}

class _homeState extends State<HomePage> {
  Position? position;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home ",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        backgroundColor: Grean,
        // iconTheme: IconButton(icon: Icons.logout_rounded,onPressed: () {

        // },),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: IconButton(
                onPressed: () async {
                  try {
                    await determinePosition();
                    position = await Geolocator.getCurrentPosition(
                        desiredAccuracy: LocationAccuracy.high);
                    setState(() {});
                  } catch (e) {
                    print(e);
                  }
                },
                icon: Icon(
                  Icons.location_pin,
                  color: Grean,
                  size: 50,
                )),
          ),
          IconButton(
              onPressed: () async {
                try {
                  await determinePosition();
                  position = await Geolocator.getCurrentPosition(
                      desiredAccuracy: LocationAccuracy.high);
                  setState(() {});
                } catch (e) {
                  print("Error Second");
                }
              },
              icon: Icon(
                Icons.map,
                color: Grean,
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
                  decoration: BoxDecoration(color: latGrean),
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
                            AlertDialog(
                              content: Text("$position"),
                            );
                            setState(() {});
                          },
                        ),
                        Text("$position"),
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
