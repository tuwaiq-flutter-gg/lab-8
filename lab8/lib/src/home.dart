import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lab8/Comp/button.dart';
import 'package:lab8/main.dart';
import 'package:lab8/src/premisiion.dart';

class home extends StatefulWidget {
  home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
        backgroundColor: gr,
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
                    print("Error first");
                  }
                },
                icon: Icon(
                  Icons.location_pin,
                  color: gr,
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
                color: gr,
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
                  decoration: BoxDecoration(color: ligr),
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
                        button(
                          title: "Print It Out",
                          onPressed: () {
                            AlertDialog(
                              content: Text(
                                position.toString(),
                              ),
                            );
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
