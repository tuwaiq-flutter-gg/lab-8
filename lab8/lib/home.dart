import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lab8/components/permission.dart';
import 'package:lab8/components/spacing.dart';
import 'package:lab8/logout.dart';
import 'package:lab8/main.dart';
import 'package:lab8/topmap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

Position? position;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LogOut()),
                    );
                  });
                },
                icon: Icon(
                  Icons.logout,
                  size: 40,
                )),
          )
        ],
        leading: InkWell(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TopMap()),
                );
              });
            },
            child: Image.asset("images/topmap.png")),
      ),
      body: ListView(
        children: [
          Spacing(spacing: 50),
          Column(
            children: [
              Image.asset("images/toploc.png"),
              Image.asset("images/undermap.png"),
            ],
          ),
          Spacing(spacing: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Center(
              child: Text(
                "This app will help you locate your place and print out easily",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 26, 67, 62)),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Spacing(spacing: 80),
          Container(
            color: Color.fromARGB(255, 126, 171, 166),
            height: MediaQuery.of(context).size.width / 2,
            child: Column(
              children: [
                Spacing(spacing: 20),
                Text(
                  "If you need your location you can see it now!",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 26, 67, 62)),
                  textAlign: TextAlign.center,
                ),
                Spacing(spacing: 40),
                ElevatedButton(
                  onPressed: () async {
                    try {
                      await determinePosition();
                      position = await Geolocator.getCurrentPosition(
                          desiredAccuracy: LocationAccuracy.high);
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
                                        color: wcolor,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacing(spacing: 80),
                                  Text(
                                    position.toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: wcolor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacing(spacing: 80),
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                            );
                          });
                    } catch (error) {
                      print("Error");
                    }
                  },
                  child: Text(
                    "Print it out",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                      backgroundColor: Color.fromARGB(255, 60, 112, 106)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
