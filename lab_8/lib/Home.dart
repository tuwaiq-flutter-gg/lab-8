import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lab_8/location/loc.dart';
import 'package:lab_8/logout.dart';
import 'package:lab_8/map_1.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Position? position;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style1 = ElevatedButton.styleFrom(
        backgroundColor: Color(0xff569696), fixedSize: Size(200, 10));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 60, 112, 106),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Logout(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.logout,
                  size: 40,
                )),
          )
        ],
        leading: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => Map1(),
                ),
              );
            },
            child: Image.asset("imag/Vector.png")),
      ),
      body: ListView(
        children: [
          IconButton(
              onPressed: (() {}),
              icon: Icon(
                Icons.location_on_outlined,
                size: 38,
              )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(10),
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  "This app will help you locate your place and print out easily",
                  style: TextStyle(fontSize: 24),
                )),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 170),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffCADEDE),
              child: Column(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "This app will help you locate your place and print out easily",
                          style: TextStyle(fontSize: 24),
                        )),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Align(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                            style: style1,
                            onPressed: () async {
                              try {
                                determinePosition();
                                position = await Geolocator.getCurrentPosition(
                                    desiredAccuracy: LocationAccuracy.high);
                              } catch (erorr) {
                                print(erorr);
                              }
                              setState(() {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                          buttonPadding: EdgeInsets.all(5),
                                          backgroundColor:
                                              Color.fromARGB(255, 60, 112, 106),
                                          content: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                "Your location is:",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 22,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                position.toString(),
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ));
                                    });
                              });
                            },
                            child: Text(
                              "Print it out",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ))),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
