import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petrolhead/view/screens/login_screen.dart';

import 'view/screens/splash_screen.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        initialRoute: '/',
        routes: {
          '/':(p0) => SplashScreen(),
          '/login':(p0) => LoginScreen()
        },
        // home: SplashScreen(),
      ),
    );
  }
}
