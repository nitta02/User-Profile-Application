import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_profile/screens/bottomNav/edit.dart';
import 'package:user_profile/screens/bottomNav/home.dart';
import 'package:user_profile/screens/bottomNav/profile.dart';
import 'package:user_profile/utils/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screens = [
    const HomeScreen(),
    const EditScreen(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              ));
        },
        backgroundColor: backgroundColor3,
        hoverColor: Colors.green,
        child: const Icon(
          CupertinoIcons.person_alt_circle_fill,
          size: 35,
          color: Colors.black,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: backgroundColor3,
          fixedColor: Colors.green,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          unselectedLabelStyle: const TextStyle(
            color: Colors.black,
          ),
          selectedIconTheme: const IconThemeData(
            color: Colors.green,
          ),
          elevation: 0,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.pencil_circle),
              label: 'Edit',
            ),
          ]),
    );
  }
}
