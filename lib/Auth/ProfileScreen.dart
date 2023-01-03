import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsappredesigned/Pages/DashBoard.dart';
import 'package:whatsappredesigned/Utils/HelperWidget.dart';
import 'package:whatsappredesigned/Utils/Themes.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 70,
                      child: Icon(
                        Icons.person,
                        size: 100,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Container(
                          height: 40,
                          width: 40,
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: mytheme.green,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              addVerticalSpace(30),
              TextField(
                decoration: InputDecoration(
                  hintText: "Name",
                  label: Text("Name"),
                  labelStyle: TextStyle(color: Colors.grey[600]),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  hintStyle: TextStyle(color: Colors.grey[400]),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey[400]!),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[400]!),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              addVerticalSpace(10),
              Text(
                "This is not your username or pin. This name will be visible to your WhatsApp contacts.",
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
              addVerticalSpace(20),
              TextField(
                decoration: InputDecoration(
                  label: Text("About"),
                  labelStyle: TextStyle(color: Colors.grey[600]),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  hintText: "About",
                  hintStyle: TextStyle(color: Colors.grey[400]),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey[400]!),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[400]!),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Spacer(),
              addVerticalSpace(150),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => DashBoard()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width - 100,
                    height: 50,
                    decoration: BoxDecoration(
                        color: mytheme.green,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        "Finish",
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
        ));
  }
}
