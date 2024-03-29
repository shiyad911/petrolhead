import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:petrolhead/constants/app_constants.dart';
import 'package:petrolhead/view/screens/login_screen.dart';
import 'package:petrolhead/view/screens/welcome_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


 @override
 void initState() {
   super.initState();
   fetchData(); // Assuming fetchData() fetches some data asynchronously
 }

 Future<void> fetchData() async {
   // Simulating an asynchronous operation
   await Future.delayed(Duration(seconds: 5));
   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen(),));

 }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Lottie.asset("assets/animations/splash_car.json",
                width: 200.w, height: 200.h),

            SizedBox(

                height: 200.h,
                child: Text(AppConstants.companyname, style: TextStyle(color:Colors.white, fontSize: 9),))
          ],
        ),
      ),
    ));
  }
}
