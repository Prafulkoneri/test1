import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/profile_screen.dart';

import '../constant/color_const.dart';
import 'booking_screen.dart';
import 'home_screen.dart';
import 'package.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    PackageScreen(),
    BookinScreen(),
    ProfieScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.new_releases_rounded,
              size: 30,
            ),
            label: 'Packages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.punch_clock_outlined, size: 30),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: pink,
        onTap: _onItemTapped,
      ),
    );
  }
}
