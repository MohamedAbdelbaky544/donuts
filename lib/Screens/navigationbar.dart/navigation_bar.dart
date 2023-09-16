import 'package:donuts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../basket/basket.dart';
import '../home/home_screen.dart';
import '../profile/profile.dart';

class ButtomNavigationBar extends StatefulWidget {
  const ButtomNavigationBar({super.key});

  @override
  State<ButtomNavigationBar> createState() => _ButtomNavigationBarState();
}

class _ButtomNavigationBarState extends State<ButtomNavigationBar> {
  int currentIndex = 0;
  List<Widget> body = [
    const HomeScreen(),
    const Scaffold(),
    const BasketPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: buttonColorbackground,
        unselectedItemColor: const Color(0xffE3E4E4),
        selectedLabelStyle: TextStyle(
          color: buttonColorbackground,
          fontSize: 16.sp,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: TextStyle(
          color: const Color(0xffE3E4E4),
          fontSize: 14.sp,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w500,
        ),
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: SvgPicture.asset(
              'assets/icons/homeIcon.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/homeIcon.svg',
              // ignore: deprecated_member_use
              color: buttonColorbackground,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Categories',
            icon: SvgPicture.asset(
              'assets/icons/categoryIcon.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/categoryIcon.svg',
              // ignore: deprecated_member_use
              color: buttonColorbackground,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Basket',
            icon: SvgPicture.asset(
              'assets/icons/shopping-bagIcon.svg',
              // ignore: deprecated_member_use
              color: const Color(0xffE3E4E4),
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/shopping-bagIcon.svg',
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: SvgPicture.asset(
              'assets/icons/userIcon.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/userIcon.svg',
              // ignore: deprecated_member_use
              color: buttonColorbackground,
            ),
          ),
        ],
      ),
    );
  }
}
