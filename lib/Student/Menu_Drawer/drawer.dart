import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:pab_jobs/Student/Menu_Drawer/Drawer_list/aboutUs.dart';
import 'package:pab_jobs/Student/Menu_Drawer/Drawer_list/feedback.dart';
import 'package:pab_jobs/Student/Menu_Drawer/Drawer_list/hire&train.dart';
import 'package:pab_jobs/Student/Menu_Drawer/Drawer_list/onlineCourses.dart';
import 'package:pab_jobs/Student/Menu_Drawer/Drawer_list/onlineExams.dart';
import 'package:pab_jobs/Student/Menu_Drawer/Drawer_list/privacy_policy.dart';
import 'package:pab_jobs/Student/Menu_Drawer/Drawer_list/settings.dart';
import 'package:pab_jobs/Student/Menu_Drawer/Drawer_list/terms&conditions.dart';
import 'package:pab_jobs/Student/mainscreens/Saved_Jobs.dart';
import 'package:pab_jobs/Student/welcomepages/student_login_screen.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Navigation_Drawer extends StatelessWidget {
  const Navigation_Drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Column(children: [
                const SizedBox(
                  height: 100,
                ),
                Container(
                  width: 60,
                  height: 60,
                  margin: const EdgeInsets.fromLTRB(10, 40, 0, 0),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://secure.gravatar.com/avatar/3a719607819fc579c2aafd4d21dad3d1?s=96&d=mm&r=g'),
                        fit: BoxFit.fill),
                  ),
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    const Text(
                      "Rajat Palankar",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: const Text(
                        "rajatpalankar@gmail.com",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.only(left: 40),
              child: Column(children: [
                InkWell(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Settings())),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.bookmark,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        "Saved Jobs",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SavedJobs())),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.auto_stories_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        "Online Courses",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => onlineCourses())),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.question_answer_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        "Feedback",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FeedbackScreen())),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.autorenew,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        "Hire & Train",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Hire_Train())),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        "Online Exams",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => onlineExams())),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.list,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        "About Us",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutUs()));
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.assignment_late_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        "Terms & Conditions",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Terms()));
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.privacy_tip,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        "Privacy Policy",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Privacy_policy()));
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                // Row(
                //   children: [
                //     IconButton(
                //         onPressed: () async {
                //           final prefs = await SharedPreferences.getInstance();
                //           prefs.clear();
                //           Get.off(() => Studentloginscreen());
                //         },
                //         icon: const Icon(
                //           Icons.power_settings_new,
                //           color: Colors.white,
                //           size: 30,
                //         )),
                //     const SizedBox(
                //       width: 10,
                //     ),
                //     const Text(
                //       "Log Out",
                //       style: TextStyle(color: Colors.white, fontSize: 20),
                //     )
                //   ],
                // ),
                InkWell(
                  child: ListTile(
                    leading: Icon(
                      Icons.power_settings_new,
                      size: 35,
                      color: Colors.white,
                    ),
                    title: Text(
                      'LogOut',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                  onTap: () {
                    logOut();
                  },
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }

  logOut() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
    Get.off(() => Studentloginscreen());
  }
}
