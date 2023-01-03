import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsappredesigned/Auth/OtpScreen.dart';
import 'package:whatsappredesigned/Utils/HelperWidget.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:whatsappredesigned/Utils/Themes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/logo.png",
              width: 100,
            ),
            addVerticalSpace(30),
            Text(
              "Welcome to whatsapp",
              style:
                  GoogleFonts.roboto(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            addVerticalSpace(10),
            Text(
              "Provide your phone number, so we can \nbe able to send you a verification code",
              style: GoogleFonts.roboto(fontSize: 16, color: Colors.grey[600]),
            ),
            addVerticalSpace(30),
            IntlPhoneField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
              initialCountryCode: 'IN',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
            addVerticalSpace(30),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text:
                    "By continuing, you are indicating that you agree to our ",
                style:
                    GoogleFonts.roboto(fontSize: 16, color: Colors.grey[600]),
              ),
              TextSpan(
                text: "Terms of Service",
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w500),
              ),
              TextSpan(
                text: " and ",
                style:
                    GoogleFonts.roboto(fontSize: 16, color: Colors.grey[600]),
              ),
              TextSpan(
                text: "Privacy Policy",
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w500),
              ),
            ])),
            Spacer(),
            addVerticalSpace(150),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OtpScreen()));
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
      ),
    );
  }
}
