import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_profile/utils/colors.dart';

class DetailsWidgets extends StatelessWidget {
  const DetailsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.3,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        backgroundColor1,
        backgroundColor2,
        backgroundColor3,
      ])),
      child: Stack(children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            height: size.height * 0.25,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 0.1,
                ),
                borderRadius: BorderRadius.circular(11)),
          ),
        ),
        const Align(
          alignment: Alignment.topRight,
          child: CircleAvatar(
            foregroundColor: Colors.black,
            child: Icon(
              CupertinoIcons.person_alt_circle_fill,
              size: 50,
            ),
          ),
        ),
      ]),
    );
  }
}
