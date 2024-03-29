import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import '../ui/pages/cart_screen.dart';
import '../ui/pages/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _selectIndex = 0;
  static List<Widget> _widgetOption = <Widget>[
    HomeScreen(),
    AddToCart(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOption.elementAt(_selectIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(0.1),
          )
        ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
          child: GNav(
            rippleColor:
                Colors.grey[300]!, // tab button ripple color when pressed
            hoverColor: Colors.grey[300]!, // tab button hover color
            // haptic: true, // haptic feedbak
            tabBorderRadius: 15,
            // tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
            // tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
            // tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
            // curve: Curves.easeOutExpo, // tab animation curves
            duration: Duration(milliseconds: 900), // tab animation duration
            gap: 8, // the tab button gap between icon and text
            color: Colors.black, // unselected icon color
            activeColor: Colors.white, // selected icon and text color
            // iconSize: 24, // tab button icon size
            tabBackgroundColor:
                Colors.redAccent, // selected tab background color
            padding: EdgeInsets.symmetric(
                horizontal: 20, vertical: 5), // navigation bar padding
            tabs: [
              GButton(
                icon: LineIcons.home,
                text: 'Home',
              ),
              GButton(
                icon: LineIcons.basketballBall,
                text: 'Likes',
              ),
              GButton(
                icon: LineIcons.search,
                text: 'Search',
              ),
              GButton(
                icon: LineIcons.user,
                text: 'Profile',
              )
            ],
            selectedIndex: _selectIndex,
            onTabChange: (index) {
              setState(() {
                _selectIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
