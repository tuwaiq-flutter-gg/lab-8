import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lab8/pages/locationPage.dart';
import 'package:lab8/pages/logOutPage.dart';

class BigMap extends StatefulWidget {
  const BigMap({super.key});

  @override
  State<BigMap> createState() => _BigMap();
}

class _BigMap extends State<BigMap> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.4219983, -122.084),
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
        backgroundColor: Color(0xff569696),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LogOutPage()),
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
                        builder: (BuildContext context) => LocationPage()),
                    (Route<dynamic> route) => route is LocationPage);
              });
            },
            child: Image.asset("images/arcticons_google-maps-alt.png")),
      ),
      body: ListView(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GoogleMap(
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            markers: {
              Marker(
                  markerId: MarkerId("Rashed"),
                  position: LatLng(37.4219983, -122.084))
            },
          ),
        ),
      ]),
    );
  }
}
