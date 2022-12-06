import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8/Components/customButton.dart';
import 'package:lab8/views/LogOut.dart';
import 'package:lab8/views/mapScreen.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff569696),
          leading: Container(
            margin: EdgeInsets.all(10),
            height: 30,
            width: 30,
            child: IconButton(
              icon: Image.asset(
                "images/location.jpg",
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapScreen()));
              },
            ),
          ),
          title: Text(
            "Home",
            style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 32,
                fontWeight: FontWeight.w900),
          ),
          actions: [
            Container(
              margin: EdgeInsets.all(10),
              height: 30,
              width: 30,
              child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LogOut()));
                },
                icon: Image.asset(
                  "images/Log-out.jpg",
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Center(
              child: Image.asset(
                "images/pointer.jpg",
                height: 50,
                width: 50,
                fit: BoxFit.fitWidth,
              ),
            ),
            Center(
                child: Image.asset(
              "images/ic_twotone-map.jpg",
              height: 50,
              width: 50,
            )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              child: Text(
                "This app will help you locate your place and print out easily",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff005F73),
                    fontSize: 20,
                    fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffCADEDE),
                  borderRadius: BorderRadius.circular(2)),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Text(
                      "If you need your location you can see it now!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff005F73),
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  CustomButton(
                    title: "Print it out",
                    onPressed: () {
                      showDialog<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Color(0xff569696),
                              title: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff569696),
                                      borderRadius: BorderRadius.circular(5)),
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 0.4,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Text(
                                        "Your Location is \n ",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ],
                                  )),
                            );
                          });
                    },
                  )
                ],
              ),
            )
          ],
        ));
  }
}
