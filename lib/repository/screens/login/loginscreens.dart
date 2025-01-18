import 'package:blinkit_clone/repository/screens/bottomnav/bottomnavscreens.dart';
import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Uihelper.customimage(image: "Blinkit Onboarding Screen.png"),
            SizedBox(
              height: 30,
            ),
            Uihelper.customimage(image: "image 10.png"),
            SizedBox(
              height: 20,
            ),
            Uihelper.customText(
                text: "India’s last minute app",
                fontweight: FontWeight.bold,
                color: Color(0xFF000000),
                fontFamily: "bold",
                fontsize: 20),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                // height: 200,
                width: 350,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                //color: Color(0xFFFFFFFF),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Uihelper.customText(
                        text: "Sahil",
                        fontweight: FontWeight.normal,
                        color: Color(0xFF000000),
                        fontsize: 15,
                        fontFamily: "regular"),
                    SizedBox(
                      height: 10,
                    ),
                    Uihelper.customText(
                        text: "7741XXXX28",
                        fontsize: 14,
                        fontweight: FontWeight.bold,
                        color: Color(0xFF9C9C9C),
                        fontFamily: "bold"),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Color(0xFFE23744),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Bottomnavscreens()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Uihelper.customText(
                                  text: "Login With",
                                  fontweight: FontWeight.bold,
                                  color: Color(0xFFFFFFFF),
                                  fontsize: 14),
                              SizedBox(
                                width: 10,
                              ),
                              Uihelper.customimage(image: "image 9.png")
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Uihelper.customText(
                        text:
                            "Access your saved addresses from Zomato automatically!",
                        fontweight: FontWeight.w400,
                        color: Color(0XFF9C9C9C),
                        fontsize: 10),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Uihelper.customText(
                            text: "or login with phone number",
                            fontweight: FontWeight.w400,
                            color: Color(0xFF269237),
                            fontsize: 14))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
