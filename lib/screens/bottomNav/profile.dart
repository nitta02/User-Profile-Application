import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_profile/utils/colors.dart';
import 'package:user_profile/widgets/textContainer.dart';

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
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          backgroundColor1,
          backgroundColor2,
          backgroundColor3,
        ])),
        child: SafeArea(
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(CupertinoIcons.back)),
                      const Text(
                        'USER DATA EXCEL',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      // auth.signOut().then((value) {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) => const MySplashScreen(),
                      //       ));
                      // });
                    },
                    icon: const Icon(Icons.logout_outlined),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          scale: 50,
                          'https://imgv3.fotor.com/images/blog-cover-image/10-profile-picture-ideas-to-make-you-stand-out.jpg'),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextContainer(text: 'Name'),
                    SizedBox(
                      height: 25,
                    ),
                    TextContainer(text: 'Age'),
                    SizedBox(
                      height: 25,
                    ),
                    TextContainer(text: 'Education'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
