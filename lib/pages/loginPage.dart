import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab8/components/myTextField.dart';
import 'package:lab8/pages/homePage.dart';
import 'package:lab8/pages/signupPage.dart';
import '../classes/user.dart';
import '../style.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required this.tempUser});
  final user tempUser;
  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                "Welcome",
                style: GoogleFonts.poppins(
                  color: greenBlue,
                  fontWeight: FontWeight.w900,
                  fontSize: 32,
                ),
              ),
              SvgPicture.asset("assets/images/undraw_cabin_hkfr 1.svg"),
              Container(
                height: 63,
                margin: const EdgeInsets.only(top: 20, bottom: 86),
                color: greenBlue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Login",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 32,
                          ),
                        ),
                        Expanded(
                            child: SvgPicture.asset("assets/images/Line 1.svg"))
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SignupPage(tempUser: tempUser)),
                          (route) => false,
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 32,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              MyTextField(controller: usernameController, hintText: "username"),
              MyTextField(controller: passwordController, hintText: "password"),
              Container(
                width: 217,
                child: ElevatedButton(
                  onPressed: () {
                    try {
                      // if (usernameController.text == tempUser.username &&
                      //     passwordController.text == tempUser.password) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage(
                                    tempUser: tempUser,
                                  )),
                          (route) => false);
                      // }
                    } catch (error) {
                      print(error);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: greenBlue,
                  ),
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 32,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 64,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    color: greenBlueWhiter,
                    height: 20,
                    width: 20,
                  ),
                  Text(
                    "Remember me",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
