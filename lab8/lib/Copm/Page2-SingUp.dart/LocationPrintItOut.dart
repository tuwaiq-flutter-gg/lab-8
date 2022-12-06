
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lab8/Services/Location.dart';
import 'package:lab8/constant.dart';

class LocationPrintItOut extends StatefulWidget {
  const LocationPrintItOut({super.key});

  @override
  State<LocationPrintItOut> createState() => _LocationPrintItOutState();
}

class _LocationPrintItOutState extends State<LocationPrintItOut> {
  Position? position;
  var longitude;
  var latitude;

  Future getPostion() async{
  try {
    await determinePosition();
    position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    longitude = position!.longitude;
    latitude = position!.latitude;
    print(longitude);
    print(latitude);
  } catch (e) {
    print(e);
  }

  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarLocation(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconStyleOfLocationHeader(),
          ClarityMessage(),
          Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 15),
            color: lightColor,
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("If you need your location you can see it now!", style: TextStyle(color: primaryColor, fontWeight: FontWeight.w800, fontSize: 20), textAlign: TextAlign.center,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    minimumSize: Size(150, 40)
                  ),
                  onPressed: () async{
                    setState(() {
                      getPostion();
                      showDialog(context: context, builder: (context){
                      return AlertDialog(
                        backgroundColor:  primaryColor,
                        content: Container(
                          padding: EdgeInsets.all(10),
                          height: 250,
                          width: 70,
                          color: primaryColor,
                          child: Column(
                            children: [
                              Text("Your Location is", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),
                              SizedBox(height: 15,),
                              Text("Your Lang: ${longitude}", style: TextStyle(color: Colors.white, )),
                              Text("Your Lat: ${latitude}", style: TextStyle(color: Colors.white, )),
                            ],
                          ),
                        ),
                      ) ;
                    });
                    });
                    
                  }, child: Text("Print it Out", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),))
              ],
            ),
          )
        ],
      ),
    );
  }

  AppBar appBarLocation() {
    return AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: primaryColor,
        actions: [
          IconButton(
            onPressed: () {
                                  Navigator.pushReplacementNamed(context as BuildContext, 'LogOut');

          }, icon: Icon(Icons.exit_to_app_rounded))
        ],
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context as BuildContext, 'GoogleMapLocation');
            }, icon: Icon(Icons.location_on_outlined)));
  }
}

class ClarityMessage extends StatelessWidget {
  const ClarityMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Text(
          "This app will help you locate your place and print out easily",
          style:
              TextStyle(color: primaryColor, fontWeight: FontWeight.w800, fontSize: 20),
          textAlign: TextAlign.center,
        ));
  }
}

class IconStyleOfLocationHeader extends StatelessWidget {
  const IconStyleOfLocationHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.location_on,
          color: primaryColor,
          size: 30,
        ),
        Icon(
          Icons.map_sharp,
          color: primaryColor,
          size: 30,
        ),
      ],
    );
  }
}
