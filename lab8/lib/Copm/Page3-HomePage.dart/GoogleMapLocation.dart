
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lab8/Services/Location.dart';
import 'package:lab8/constant.dart';
import 'package:lab8/Copm/Page2-SingUp.dart/LocationPrintItOut.dart';

class GoogleMapLocation extends StatelessWidget {
   GoogleMapLocation({super.key});
  Position? position;
  var longitude;
  var latitude;
  var _kGooglePlex;
  Completer<GoogleMapController> _controller = Completer();
 
    Future getPostion() async{
  try {
    await determinePosition();
    position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    longitude = position!.longitude;
    latitude = position!.latitude;
    print(longitude);
    print(latitude);
     _kGooglePlex = CameraPosition(
    target: LatLng(latitude, longitude),
    zoom: 14.4746,
  );
  } catch (e) {
    print(e);
  }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: primaryColor,
        actions: [
          IconButton(onPressed: () {
                                  Navigator.pushReplacementNamed(context as BuildContext, 'LogOut');

          }, icon: Icon(Icons.exit_to_app_rounded))
        ],
        leading: IconButton(
            onPressed: () {


            }, icon: Icon(Icons.location_on_outlined))),

            body: Column(
              children: [
                _kGooglePlex == null ? CircularProgressIndicator() :
                GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
              ],
            ),
    );
  }
}