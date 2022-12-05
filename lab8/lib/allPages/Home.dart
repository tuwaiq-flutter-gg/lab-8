import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lab8/allPages/logOut.dart';

class Home extends StatefulWidget {
  
  const Home({super.key});
  

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Position position;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: 
          [Column(
            children: [
              Container(
                color: Color(0xff569696),
                height: 78,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          color: Colors.white,
                          onPressed: () {},
                          icon: Icon(Icons.add_location_outlined)),
                      Text(
                        "Home",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => logout()));
                        },
                        icon: Icon(Icons.exit_to_app),
                        style: ButtonStyle(),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Icon(
                color: Color(0xff569696),
                Icons.location_on_rounded,
                size: 50,
              ),
              Icon(
                color: Color(0xff569696),
                Icons.map_rounded,
                size: 50,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "This App will help you locate your ",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff005F73)),
              ),
              Text("and print out easily ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff005F73))),
              SizedBox(
                height: 50,
              ),
              Container(
                color: Color(0xffCADEDE),
                height: 234,
                width: MediaQuery.of(context).size.width,
                child: Center(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "if you need your location you can see it",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff005F73)),
                    ),
                    Text("now! ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff005F73))),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff569696)),
                        onPressed: () async{
                        
                           
                            position= await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

                          
                          
                          showDialog(
                            
                              context: context,
                              builder: ((context) => AlertDialog(
                                backgroundColor:   Color(0xff569696),
      
                                content: Container(
                                  
                                  height: 400,
                                  width: 395,
                                  color: Color(0xff569696),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 150 , top: 10),
                                    child: Text("your location is"),
                                    
                                    
                                  ),
                                ),
                                actions: [
                                  Text("$position")
                                 
                                ],
                              )
                              ));
                        },
                        child: Text("Print it out",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)))
                  ],
                )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
