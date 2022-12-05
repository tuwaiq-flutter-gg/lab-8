import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lab88/components/five.dart';
import 'package:url_launcher/url_launcher.dart';

class Forth extends StatefulWidget {
  const Forth({super.key});

  @override
  State<Forth> createState() => _ForthState();
}

class _ForthState extends State<Forth> {
  Uri url = Uri.parse('https://www.google.com/maps/@,45.081137,5z');

  Position? position;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 39),
            child: Container(
              color: Color(0xff569696),
              height: 55,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Image.asset("images/Vector.png"),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(130, 5, 5, 5),
                    child: Text(
                      "Home",
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 111),
                    child: InkWell(
                        onTap: (() {

Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Five()),);
    

                        }),
                        child: Container(
                            child:
                                Image.asset("images/entypo_log-out (1).png"))),
                  )
                ],
              ),
            ),
          ),
          Column(
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
                        child: Text("printLocation"))),
              ),
              // ignore: avoid_print

              ElevatedButton(
                  onPressed: () {
                    launchUrl(url);

                    setState(() {
                      url = Uri.parse(
                          'https://www.google.com/maps/search/?api=1query=${position!.altitude},${position!.longitude}');
                    });
                  },
                  child: Container(
                    child: Text("open gogle man"),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
