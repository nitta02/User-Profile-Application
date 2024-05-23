import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_profile/utils/colors.dart';
import 'package:user_profile/widgets/button.dart';
import 'package:user_profile/widgets/textForm.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController ageController = TextEditingController();
    final TextEditingController eduController = TextEditingController();

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        decoration: BoxDecoration(
            gradient: SweepGradient(colors: [
          backgroundColor1,
          backgroundColor2,
          backgroundColor3,
        ])),
        child: SafeArea(
            child: ListView(
          children: [
            const Text(
              'USER DATA EXCEL',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            TextForm(
                controller: nameController, icon: Icons.abc, hintText: 'Name'),
            const SizedBox(
              height: 15,
            ),
            TextForm(
                controller: ageController,
                icon: Icons.numbers_sharp,
                hintText: "Age"),
            const SizedBox(
              height: 15,
            ),
            TextForm(
              controller: eduController,
              hintText: "Education",
              icon: CupertinoIcons.building_2_fill,
            ),
            const SizedBox(
              height: 55,
            ),
            CommonButton(onPressed: () {}, text: 'Save'),
          ],
        )),
      ),
    );
  }
}
