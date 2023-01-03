import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsappredesigned/Utils/HelperWidget.dart';
import 'package:whatsappredesigned/Utils/Themes.dart';

import 'ProfileScreen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
        ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start ,
          children: [
            Image.asset(
              "assets/logo.png",
              width: 100,
            ),
            addVerticalSpace(30),
            Text(
              "Verification",
              style:
              GoogleFonts.roboto(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            addVerticalSpace(10),
            Text(
              "We have sent you an SMS with a code to the number you provided.",
              style: GoogleFonts.roboto(fontSize: 16, color: Colors.grey[600]),
            ),
            addVerticalSpace(30),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[200]!),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("7", style: TextStyle(fontSize: 30),)),
                ),
                addHorizontalSpace(10),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[200]!),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("7", style: TextStyle(fontSize: 30),)),
                ),
                addHorizontalSpace(10),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[200]!),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("7", style: TextStyle(fontSize: 30),)),
                ),
                addHorizontalSpace(10),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[200]!),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("7", style: TextStyle(fontSize: 30),)),
                ),

              ],
            ),
            addVerticalSpace(30),
            Text("Resend code in 00:30", style: TextStyle(color: Colors.blueGrey[600]),),
            Spacer(),
            addVerticalSpace(150),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 100,
                  height: 50,
                  decoration: BoxDecoration(
                      color: mytheme.green,
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),

          ],
        ),
      )
    );
  }
}
