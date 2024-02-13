import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/black-mini.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "Namaskaram",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "I spend a lot of money on booze, birds, and fast cars. The rest I just squandered",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        Positioned.fill(
          bottom: 20.0, // Adjust this value according to your needs
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SizedBox(
                    width: 200.w,
                    height: 50.h,
                    // Background color of the button
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => LoginScreen(),));

                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SizedBox(
                    width: 200.w,
                    height: 50.h,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Register",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
