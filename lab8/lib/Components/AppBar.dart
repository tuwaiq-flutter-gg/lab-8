import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lab8/pages/LogOut.dart';

class AppBarCus extends StatelessWidget with PreferredSizeWidget {
  const AppBarCus(
      {super.key,
      List<ElevatedButton>? actions,
      Text? title,
      bool? centerTitle,
      ElevatedButton? leading,
      Color? backgroundColor});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF569696),
      leading: ElevatedButton(
        onPressed: () {
        //  _liveLocation();
        },
        child: Image.asset("images/arcticons_google-maps-alt.png"),
        style: ElevatedButton.styleFrom(
          primary: Color(0xFF569696),
          padding: EdgeInsets.all(1),
        ),
      ),
      centerTitle: true,
      title: Text(
        "Home",
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
      actions: [
        ElevatedButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LogOut())),
            child: Image.asset("images/Vector.png"),
            style: ElevatedButton.styleFrom(primary: Color(0xFF569696))),
      ],
    );
  }

  //
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

// void _liveLocation() {
//   LocationSettings locationSettings = const LocationSettings(
//     accuracy: LocationAccuracy.high,
//     distanceFilter: 100,
//   );
//   Geolocator.getPositionStream(locationSettings: locationSettings)
//       .listen((Position position) {
//     late = position.latitude.toString();
//     long = position.longitude.toString();
//     setSt
//   });
// }
