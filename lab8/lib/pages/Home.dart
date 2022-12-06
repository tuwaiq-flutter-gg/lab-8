import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geolocator/geolocator.dart';

import '../Components/AppBar.dart';
import '../Services/Location/pos.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Position position;

  String Lon = "";
  String Lat = "";

  Poo() async {
    await Geolocator.openLocationSettings(); //
    Position? position;
    try {
      await determinePosition();
      position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      Lon = position.longitude.toString();
      Lat = position.latitude.toString();

      // print("LLLLLOOOONNNNGGGGG  ${position!.longitude}");
      // print("LLLLLLLAAAAAAATTTT ${position!.latitude}");
    } catch (error) {
      print(error);
    }
  }
  ////////////////////////////////////////////
  //  String locationMessage = "Current Location";
  // late String late;
  // late String long;

  // Future<Position> getCurrentLocation() async {
  //   bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnabled) {
  //     return Future.error('Location are disabled');
  //   }
  //   LocationPermission permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission == LocationPermission.denied) {
  //       return Future.error('permission is denied');
  //     }
  //   }
  //   return await Geolocator.getCurrentPosition();
  // }
  ///////////////////////////////////////////////////////////////////////
//   void _liveLocation() {
//   LocationSettings locationSettings = const LocationSettings(
//     accuracy: LocationAccuracy.high,
//     distanceFilter: 100,
//   );
//   Geolocator.getPositionStream(locationSettings: locationSettings)
//       .listen((Position position) {
//     late = position.latitude.toString();
//     long = position.longitude.toString();
//     setState(() {
//       locationMessage =
//     });
//   });
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarCus(),
      body: ListView(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: Image.asset("images/sec.png"),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "This app will help you locate your",
              style: TextStyle(
                  color: Color(0xFF005F73),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "Place and print out easily",
              style: TextStyle(
                  color: Color(0xFF005F73),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 200,
            color: Color(0xFFCADEDE),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 50,
                  child: Text(
                    "If you need your location you can see it now!",
                    style: TextStyle(
                        color: Color(0xFF005F73),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () async {
                      //showdilog
                      //position= await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
                      setState(() {
                        Poo();
                      });
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Color(0xFF569696),
                              content: Container(
                                height: 300,
                                width: 300,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Your Location is ",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(Lat.toString()),
                                    Text(Lon.toString()),
                                    // Text(
                                    //   locationMessage,
                                    //   textAlign: TextAlign.center,
                                    // )
                                  ],
                                ),
                              ),
                            );
                          });
                      // getCurrentLocation().then((value) {
                      //   late = '${value.latitude}';
                      //   long = '${value.longitude}';
                      //   setState(() {
                      //     locationMessage =
                      //         "Latitude : $late , Longitude : $long";
                      //   });
                      // });
                    },
                    child: Text(
                      'Print it out',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF569696),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
