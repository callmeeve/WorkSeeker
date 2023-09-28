import 'package:flutter/material.dart';
import 'package:rent_work/core.dart';
import 'package:unicons/unicons.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int selectedIndex = 0;

  final List<Widget> screens = const [
    HomeScreen(),
    MailScreen(),
    JobScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: white,
        elevation: 3,
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(UniconsLine.home_alt),
            label: '●',
          ),
          BottomNavigationBarItem(
            icon: Icon(UniconsLine.envelope),
            label: '●',
          ),
          BottomNavigationBarItem(
            icon: Icon(UniconsLine.bag_alt),
            label: '●',
          ),
          BottomNavigationBarItem(
            icon: Icon(UniconsLine.user_circle),
            label: '●',
          ),
        ],
        iconSize: 28,
        selectedItemColor: primary,
        unselectedItemColor: Colors.grey.shade400,
      ),
    );
  }
}
