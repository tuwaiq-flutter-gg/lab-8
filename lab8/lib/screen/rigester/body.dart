import 'package:flutter/material.dart';
import 'package:lao8/screen/location/body.dart';
import 'package:lao8/screen/rigester/rigesterform.dart';
import 'package:lao8/Components/color.dart';

class rigester extends StatelessWidget {
  const rigester({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Center(
          child: Column(
            children: [
              Text(
                'Welcome',
                style: TextStyle(
                    fontSize: 35,
                    color: Primarycolor,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                  height: 140,
                  width: 140,
                  child: Image.asset('assetst/home.png')),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                color: Primarycolor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    rigsterform(
                      text: ('Login'),
                      press: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const loginfprm()));
                      },
                    ),
                    rigsterform(
                      text: ('SignUP'),
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => location())));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
