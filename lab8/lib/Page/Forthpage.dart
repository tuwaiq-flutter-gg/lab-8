import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:lab8/Page/FivePage.dart';

class ForthPage extends StatefulWidget {
  Position position;
   ForthPage({super.key,required this.position});

  @override
  State<ForthPage> createState() => _ForthPageState();
}

class _ForthPageState extends State<ForthPage> {

 Completer<GoogleMapController> _controller = Completer();
static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:     
       Column(
         children: [
           Container(color: Colors.green,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(icon: Icon(Icons.location_on),color: Colors.white, onPressed: () { },),
              Text("Home",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              IconButton(icon: Icon(Icons.logout),color: Colors.white, onPressed: () {Navigator.of(context)
               .push(MaterialPageRoute(builder: (context) => const FivePage())); },),
            ],
      ),
    ),
    Container(
      height: MediaQuery.of(context).size.height-50,
      child:  GoogleMap(
       mapType: MapType.normal,
       initialCameraPosition: CameraPosition(
          target: LatLng(widget.position.latitude, widget.position.longitude),
          zoom: 14.4746),
        // initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    )
  

         ],
       ),


    );
  }
}