import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsappredesigned/Auth/LoginScreen.dart';
import 'package:whatsappredesigned/Utils/HelperWidget.dart';
import 'package:whatsappredesigned/Utils/Themes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => LoginScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff16d173),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            addVerticalSpace(70),
            Image.asset(
              "assets/logo.png",
              height: 100,
            ),
            Stack(
              children: [
                Center(
                  child: Text(
                    "Simple. Secu\nReliable. mes",
                    textHeightBehavior: TextHeightBehavior(
                      applyHeightToFirstAscent: false,
                      applyHeightToLastDescent: false,
                    ),
                    style: GoogleFonts.poppins(
                        fontSize: 50,
                        height: 1,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.1)),
                  ),
                ),
                Positioned(
                  top: 45,
                  left: 100 ,
                  child: Center(
                    child: Text(
                      "Simple. Secure \nReliable. messaging",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          height: 1,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              "From Kratos Official",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            addVerticalSpace(20),
          ],
        ),
      ),
    );
  }
}
