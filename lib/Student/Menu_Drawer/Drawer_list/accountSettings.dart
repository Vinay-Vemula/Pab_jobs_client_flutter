import 'package:flutter/material.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({Key? key}) : super(key: key);
  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  final _formKey = GlobalKey<FormState>();
  String userName = " ", email = " ", password = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   //   title: Text('Account Settings',style: TextStyle(color: Colors.black),),
      //   backgroundColor: Colors.white,
      //   leading: InkWell(
      // child: Icon(
      //   Icons.arrow_back_ios,
      //   color: Colors.black,
      // ),
      //       onTap: () {
      //         Navigator.pop(context);
      //       }),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [

                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text(
                          "Account Settings",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 45.0,
                      child: ClipOval(
                          child: Icon(
                        Icons.account_circle,
                        size: 45,
                        color: Colors.black,
                      )),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          border: OutlineInputBorder(borderSide: BorderSide()),
                          labelText: "Username",
                          hintText: 'Change User name',
                          prefixIcon: Icon(Icons.account_circle_rounded)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                            color: Colors.black,
                          )),
                          border: OutlineInputBorder(borderSide: BorderSide()),
                          labelText: 'Email',
                          hintText: "Change email",
                          prefixIcon: Icon(Icons.email)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                          color: Colors.black,
                        )),
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        labelText: 'Password',
                        hintText: "Change Password",
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      width: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                primary: Colors.black),
                            onPressed: () {},
                            child: Text('Save Changes')),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
