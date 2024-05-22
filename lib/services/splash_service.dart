// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:user_profile/screens/auth/signIn.dart';

class SplashService {
  void isLogin(BuildContext context) {
    // //  Timer(const Duration(seconds: 3), () {
    // //     Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
    // //   });
    // if (user!=null) {
    //   Timer(const Duration(seconds: 3), () {
    //     Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
    //   });
    // } else {

    //   Timer(const Duration(seconds: 3), () {
    //     Navigator.push(context, MaterialPageRoute(builder: (context) => const MySplashScreen(),));
    //   });
    // }

    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SignInScreen(),
          ));
    });
  }
}
