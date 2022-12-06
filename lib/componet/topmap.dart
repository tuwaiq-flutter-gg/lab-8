
 import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:labkhuloudlab8/componet/HomePage.dart';
import 'package:labkhuloudlab8/componet/loguot.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TopMap extends StatefulWidget {
   const TopMap({super.key});

   @override
   State<TopMap> createState() => _TopMapState();
 }

 class _TopMapState extends State<TopMap> {
   Completer<GoogleMapController> _controller = Completer();

   static final CameraPosition _kGooglePlex = CameraPosition(
     target: LatLng(37.42796133580664, -122.085749655962),
     zoom: 14.4746,
   );

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
                 Navigator.pushAndRemoveUntil(
                     context,
                     MaterialPageRoute(
                         builder: (BuildContext context) => HomePage()),
                     (Route<dynamic> route) => route is HomePage);
               });
             },
             child: Image.asset("images/topmap.png")),
       ),
       body: ListView(children: [
         SizedBox(
           height: MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,
           child: GoogleMap(
             // mapType: MapType.hybrid,
             initialCameraPosition: _kGooglePlex,
             onMapCreated: (GoogleMapController controller) {
               _controller.complete(controller);
             },
             markers: {Marker(markerId: MarkerId("khuloud"), position: LatLng(37.42796133580664, -122.085749655962))},
           ),
         ),
       ]),
     );
   }
 }
 //AIzaSyBERYku0P6FKer4iaTthkbLOb7vxfzaSjE
