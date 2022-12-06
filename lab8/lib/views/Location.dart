
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lab8/styles/styles.dart';
import 'package:lab8/views/FirstScreen.dart';
import 'package:lab8/views/Logout.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {

  late GoogleMapController mapController;
  
  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("Home" , style: TextStyle(fontWeight: FontWeight.w900, fontSize: 32, color: textColor),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Logout()));
            } , 
            icon: Icon(Icons.logout, color: textColor,)
          ),

          IconButton(
            onPressed: () {

            } , 
            icon: Icon(Icons.location_on, color: textColor,)
          ),
        ],
      ),

      body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),

    );
  }
}