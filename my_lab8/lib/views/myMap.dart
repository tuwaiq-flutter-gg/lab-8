import 'dart:async';

import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:my_lab8/views/logout.dart';
mixin m{

  static double MyLong=0, MyLat=0;
}
class MyMap extends StatefulWidget {
  double? lat,long;
   MyMap({super.key, this.lat,this.long}){
     m.MyLat=this.lat!;
     m.MyLong=this.long!;
   }

  @override
  State<MyMap> createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  
    Completer<GoogleMapController> _controller = Completer();
 static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(m.MyLat, m.MyLong),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(


        appBar: AppBar(backgroundColor: Color(0xff569696), 
      title: Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("images/arcticons_google-maps-alt.png"),
            Text("Home", style: TextStyle(
              color:Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w700
            ),),

               InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder:((context) =>  logOut()) )),

                 child: Image.asset("images/entypo_log-out.png")),
          ],
        ),
      ),
      automaticallyImplyLeading: false,
      centerTitle: true,
      ),


body: Column(children: [
  Container(
    height: MediaQuery.of(context).size.height*.8,
    width: MediaQuery.of(context).size.width,
    child: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
  )
],),
    );
  }
}