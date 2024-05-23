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
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 10,
            ),
            decoration: BoxDecoration(
                border: Border.all(
                  width: 0.1,
                ),
                borderRadius: BorderRadius.circular(11)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  children: [
                    Text('Name'),
                    Text("Details"),
                  ],
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      shape: WidgetStatePropertyAll(BeveledRectangleBorder())),
                  onPressed: () {},
                  child: const Text(
                    'Check More',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
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
