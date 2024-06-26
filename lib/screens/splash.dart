import 'package:flutter/material.dart';
import 'package:user_profile/services/splash_service.dart';
import 'package:user_profile/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    SplashService().isLogin(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            backgroundColor1,
            backgroundColor2,
            backgroundColor3,
          ]),
        ),
        height: size.height,
        width: size.width,
        child: Container(
          height: size.height * 0.33,
          width: size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              primaryColor,
              primaryColor,
              primaryColor,
            ]),
            image: const DecorationImage(
              image: AssetImage(
                "assets/logo/User.png",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
