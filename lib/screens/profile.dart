import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_profile/utils/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          backgroundColor1,
          backgroundColor2,
          backgroundColor3,
        ])),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(CupertinoIcons.back)),
            ),
            GestureDetector(
              onTap: () {
                // auth.signOut().then((value) {
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => const MySplashScreen(),
                //       ));
                // });
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sign Out'),
                  Icon(Icons.logout_outlined),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
