import 'package:flutter/material.dart';
import 'package:urate/screens/account_screen/account_screen.dart';
import 'package:urate/screens/intro_screen/intro_screen.dart';
import 'package:urate/screens/settings_screen/settings_screen.dart';

import '../constants/constants.dart';

class BottomNavBarDesign extends StatefulWidget {
  const BottomNavBarDesign({super.key});

  @override
  State<BottomNavBarDesign> createState() => _BottomNavBarDesignState();
}

class _BottomNavBarDesignState extends State<BottomNavBarDesign> {
  int bottomSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          size: 28,
        ),
        label: "Home",
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.account_circle,
          size: 28,
        ),
        label: "Profile",
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.settings,
          size: 28,
        ),
        label: "Settings",
      ),
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[IntroScreen(), AccountScreen(), SettingsScreen()],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          curve: Curves.ease, duration: const Duration(milliseconds: 10));
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: buildPageView(),
      bottomNavigationBar: SizedBox(
        height: height * 0.12,
        child: BottomNavigationBar(
          backgroundColor: Constants.kPurpleColor,
          // backgroundColor: Constants.kMaintGreenColor,
          showSelectedLabels: true,
          // selectedLabelStyle: TextStyle(fontSize: 16, color: Colors.red),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          // selectedItemColor: Constants.kMaintGreenColor,
          // unselectedItemColor: Constants.kMaintGreenColor,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: bottomSelectedIndex,
          onTap: (index) {
            bottomTapped(index);
          },
          items: buildBottomNavBarItems(),
        ),
      ),
    );
  }
}
