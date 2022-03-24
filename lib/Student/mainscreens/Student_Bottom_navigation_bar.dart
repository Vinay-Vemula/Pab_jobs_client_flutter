import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:pab_jobs/Student/mainscreens/homejobs/posts.dart';
import 'package:pab_jobs/Student/mainscreens/profile/Profile_info.dart';
import 'package:pab_jobs/Student/mainscreens/profile/sample.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class StudentBottomNavBar extends StatefulWidget {
  @override
  _StudentBottomNavBarState createState() => _StudentBottomNavBarState();
}

class _StudentBottomNavBarState extends State<StudentBottomNavBar> {
  late PageController _pageController;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var profiledecode;
    List<Widget> widgetOptions = <Widget>[
      PostsPage(),
      PostsPage(),
      PostsPage(),
      // const ProfileInfo(),
      const ProfileInfo(),
    ];
    void onTabTapped(index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        onTap: onTabTapped,
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.touch_app_outlined), label: 'Saved jobs'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}


// icon size:24 for fontAwesomeIcons
// icons size: 30 for MaterialIcons

// List<Widget> _listOfWidget = <Widget>[
//  PostsPage.fromBase64(jwt),
//   PostsPage(),
//   PostsPage(),
//   Container(
//     alignment: Alignment.center,
//     child: const Icon(
//       Icons.account_circle_outlined,
//       size: 56,
//       color: Colors.brown,
//     ),
//   ),
// ];
