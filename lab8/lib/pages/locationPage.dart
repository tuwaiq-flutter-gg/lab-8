import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lab8/pages/googleMap.dart';
import 'package:lab8/pages/logOutPage.dart';
import 'package:lab8/per.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  Position? position;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Home",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LogOutPage()));
                },
                child: Image.asset("images/entypo_log-out.png")),
          ],
          backgroundColor: Color(0xff569696),
          leading: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const BigMap()));
              },
              child: Image.asset("images/arcticons_google-maps-alt.png"))),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: TextButton(
                onPressed: () {},
                child: Image.asset(
                    "images/material-symbols_location-on-rounded.png")),
          ),
          TextButton(
              onPressed: () {},
              child: Image.asset("images/ic_twotone-map.png")),
          SizedBox(
            height: 15,
          ),
          Text(
            "This app will help you locate your \n place and print out easily",
            style: TextStyle(
                color: Color(0xff005F73),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: 480,
            height: 223,
            color: Color(0xffCADEDE),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "If you need your location you can see it now!",
                  style: TextStyle(
                      color: Color(0xff005F73),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(
                    width: 160,
                    height: 45,
                    child: ElevatedButton(
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
                                  backgroundColor: Color(0xff569696),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "Your location is:",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 50),
                                        child: Text(
                                          position.toString(),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100,
                                      ),
                                    ],
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                );
                              });
                        } catch (error) {
                          print("Error");
                        }
                      },
                      child: Text(
                        "Print it out",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff569696)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
