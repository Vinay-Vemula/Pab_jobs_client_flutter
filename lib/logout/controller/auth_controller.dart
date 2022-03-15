import 'dart:convert';

//import 'package:autologin/screens/home_screen.dart';
//import 'package:autologin/screens/login_screen.dart';

import 'package:get/get.dart';
import 'package:pab_jobs/Student/mainscreens/Student_Bottom_navigation_bar.dart';
import 'package:pab_jobs/Student/welcomepages/student_login_screen.dart';

import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  static signin(String email, [String? password]) async {
    var any = await SharedPreferences.getInstance();

    Get.off(StudentBottomNavBar());
  }

  Future<bool> tryAutoLogin() async {
    var any = await SharedPreferences.getInstance();
    if (!any.containsKey("signin")) {
      return false;
    } else {
      return true;
    }
  }

  static logOut() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
    Get.off(() => Studentloginscreen());
  }
}
