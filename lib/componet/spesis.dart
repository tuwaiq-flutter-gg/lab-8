import 'package:flutter/cupertino.dart';
 import 'package:flutter/src/widgets/container.dart';
 import 'package:flutter/src/widgets/framework.dart';
 import 'package:google_maps_flutter/google_maps_flutter.dart';

 class Spacing extends StatelessWidget {
   Spacing({super.key, required this.spacing});
   double? spacing;

   @override
   Widget build(BuildContext context) {
     return SizedBox(
       height: spacing,
     );
   }
 }
 
