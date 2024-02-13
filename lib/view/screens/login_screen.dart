import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Form(
                  child: Column(
                children: [
                  SizedBox(
                    width: 300.w,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          hintText: "Enter email",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 300.w,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(),
                            labelText: "Password",
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            hintText: "Enter password",
                            suffixIcon: Icon(Icons.visibility)),
                      ),
                    ),
                  ),


                  Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      width: 200.w,
                      height: 50.h,
                      // Background color of the button
                      child: TextButton(
                          onPressed: () {

                          },
                          child: Text(
                            "Forgot password?",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 200.w,
                    height: 50.h,
                    // Background color of the button
                    child: TextButton(
                        onPressed: () {

                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  SizedBox(
                    width: 200.w,
                    height: 50.h,
                    // Background color of the button
                    child: TextButton(
                        onPressed: () {

                        },
                        child: Text(
                          "Sign in with Google",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),

                  SizedBox(
                    width: 200.w,
                    height: 50.h,
                    // Background color of the button
                    child: TextButton(
                        onPressed: () {

                        },
                        child: Text(
                          "Sign in with Apple Id",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  SizedBox(
                    width: 200.w,
                    height: 50.h,
                    // Background color of the button
                    child: TextButton(
                        onPressed: () {

                        },
                        child: Text(
                          "No account? Create new",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ],
              ))
            ],
          )),
    ]);
  }
}
