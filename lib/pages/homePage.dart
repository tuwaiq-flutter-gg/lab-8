import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab8/classes/user.dart';
import 'package:lab8/style.dart';
import 'package:geolocator/geolocator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.tempUser});
  final user tempUser;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: greenBlue,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              SvgPicture.asset("assets/images/arcticons_google-maps-alt.svg"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset("assets/images/entypo_log-out.svg"),
          ),
        ],
        title: const Text(
          "Home",
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            SvgPicture.asset("assets/images/Vector.svg"),
            SvgPicture.asset("assets/images/ic_twotone-map.svg"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "This app will help you locate your place and print out easily",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: greenBlue,
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 130,
            ),
            Container(
              padding: EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width,
              height: 234,
              color: greenBlueWhiter,
              child: Column(
                children: [
                  Text(
                    "If you need your location you can see it now!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: greenBlue,
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    width: 210,
                    height: 49,
                    child: ElevatedButton(
                      onPressed: () async {
                        Geolocator.requestPermission();
                        Position position = await Geolocator.getCurrentPosition(
                            desiredAccuracy: LocationAccuracy.high);
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            backgroundColor: greenBlue,
                            content: Container(
                              height: 320,
                              width: 400,
                              child: Column(
                                children: [
                                  Text(
                                    "Your Location is ",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    position.toString(),
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(ctx).pop();
                                },
                                child: Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.all(14),
                                  child: const Text(
                                    "okay",
                                    style: TextStyle(color: greenBlue),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: greenBlue,
                      ),
                      child: Text("Print it out",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.center),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
