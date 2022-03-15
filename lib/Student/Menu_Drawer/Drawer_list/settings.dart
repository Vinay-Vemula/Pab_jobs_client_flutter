import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pab_jobs/Student/Menu_Drawer/Drawer_list/accountSettings.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _isSwitched = false;
  bool isSwitched = false;
  var textValue = 'Switch is OFF';
  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      // print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      // print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    //var _themeManager;
    // var _themeManager;
    // themeMode:
    // _themeManager.themeMode;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Settings',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.purple[800],
          ),
        ),
        iconTheme: IconThemeData(color: Colors.purple),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.only(top: 20),
          // height: 1600,
          // width: 500,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Account Settings',
                              style: TextStyle(
                                  fontSize: 20,
                                  //color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AccountSettings()));
                            },
                            icon: Icon(
                              Icons.edit,
                              // color: Colors.white,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    Text(
                      "Here you can change your privacy settings, phone number, email and you can delete your account.",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Divider(
                  height: 2,
                ),
                SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Theme Mode',
                              style: TextStyle(
                                  fontSize: 20,
                                  // color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        IconButton(
                            icon: Icon(Icons.lightbulb),
                            onPressed: () {
                              Get.isDarkMode
                                  ? Get.changeTheme(ThemeData.light())
                                  : Get.changeTheme(ThemeData.dark());
                            }),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    Text(
                      "By using theme mode you can switch to light or dark mode.",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Divider(
                  height: 2,
                ),
                SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Notification Settings',
                            style: TextStyle(
                                fontSize: 20,
                                // color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 15,
                        ),
                        Switch(
                          onChanged: toggleSwitch,
                          value: isSwitched,
                          activeColor: Colors.black,
                          activeTrackColor: Colors.black26,
                          inactiveThumbColor: Colors.grey,
                          inactiveTrackColor: Colors.grey,
                        ),
                        //  SizedBox(
                        //   width: 10,
                        // ),
                      ],
                    ),
                    Text(
                      'Turn on Notification settings to get notifications',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
