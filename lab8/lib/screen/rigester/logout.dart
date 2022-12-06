import 'package:flutter/material.dart';
import 'package:lao8/Components/custom.dart';
import 'package:lao8/Components/color.dart';

class logout extends StatelessWidget {
  const logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                color: Primarycolor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assetst/map.png'),
                    Text(
                      'Home',
                      style: TextStyle(
                          fontSize: 25,
                          color: whait,
                          fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => logout()));
                        },
                        child: Image.asset('assetst/out.png')),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text(
                            ' Confirrm your log out please !',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          customTextFeild(
                            hinttext: 'Password',
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          coustombuttom(
                            Title: "Logout",
                            ontap: () {},
                          )
                        ],
                      ),
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
