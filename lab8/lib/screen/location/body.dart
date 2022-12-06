import 'package:flutter/material.dart';
import 'package:lao8/Components/custom.dart';
import 'package:lao8/Components/color.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lao8/screen/location/form.dart';
import 'package:lao8/screen/rigester/logout.dart';


class location extends StatefulWidget {
  const location({super.key});

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {
   Position? position;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                color: Primarycolor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assetst/map.png'),
                    Text(
                      'Home',
                      style: TextStyle(
                          fontSize: 25,
                          color: whait,
                          fontWeight: FontWeight.bold),
                    ),
                     InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => logout()));
                        },
                        child: Image.asset('assetst/out.png')),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Image.asset('assetst/loc.png'),
                          Image.asset('assetst/flag.png'),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'This app will help you locate your',
                            style: TextStyle(
                                color: textfiledcolor2,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' place and print out easil',
                            style: TextStyle(
                                color: textfiledcolor2,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 130,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      color: textfiledcolor1,
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              'If you need your location you can see it',
                              style: TextStyle(
                                  color: textfiledcolor2,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'now!',
                              style: TextStyle(
                                  color: textfiledcolor2,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                                       Text(
                              '$position!',
                              style: TextStyle(
                                  color: textfiledcolor2,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            coustombuttom(
                              Title: "Print it out",
                              ontap: (() async {
              try {
                determinePosition();
                position = await Geolocator.getCurrentPosition(
                    desiredAccuracy: LocationAccuracy.high);
              } catch (erorr) {
                print(erorr);
              }
              setState(() {});
            }),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
