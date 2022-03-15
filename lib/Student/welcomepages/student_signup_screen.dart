// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/route_manager.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pab_jobs/Student/utils/animations.dart';
import 'package:pab_jobs/Student/welcomepages/student_login_screen.dart';


class Studentsignupscreen extends StatefulWidget {
  @override
  State<Studentsignupscreen> createState() => _StudentsignupscreenState();
}

class _StudentsignupscreenState extends State<Studentsignupscreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  // ignore: non_constant_identifier_names
  var fullname = '';

  var email = '';

  var contactNumber = '';

  var password = '';
  bool hide = false;

  //TextEditingController password = TextEditingController();

  //TextEditingController cpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            TopAnime(
              2,
              20,
              curve: Curves.fastOutSlowIn,
              child: Container(
                margin: const EdgeInsets.only(top: 400),
                width: double.infinity,
                height: 450,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40))),
              ),
            ),
            BottomAnime(
              2,
              20,
              curve: Curves.fastLinearToSlowEaseIn,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                margin: const EdgeInsets.only(top: 200, left: 50, right: 50),
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black38,
                          spreadRadius: 0.1,
                          blurRadius: 5)
                    ]),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10, 8, 8, 8),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.deepPurple,
                        ),
                        labelText: 'Full Name',
                        hintText: "Enter your full name",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your full name';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        fullname = value;
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.deepPurple,
                        ),
                        labelText: "Email Id",
                        hintText: 'Enter your email Id',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email Id';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        email = value;
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        prefixIcon: const Icon(
                          Icons.phone,
                          color: Colors.deepPurple,
                        ),
                        labelText: "Contact Number",
                        hintText: 'Enter your Contact Number',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Contact Number';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        contactNumber = value;
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: hide,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              hide = !hide;
                            });
                          },
                          child: hide
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.deepPurple,
                        ),
                        labelText: "Password",
                        hintText: 'Enter Your password',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        password = value;
                        //  as TextEditingController;
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                        ),
                        onPressed: () async {
                          signup(fullname, email, contactNumber, password);

                          if (_formkey.currentState!.validate()) {
                            print("successful");

                            return;
                          } else {
                            print("UnSuccessfull");
                          }
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 60),
                          child: Expanded(child: Text("Sign Up")),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account"),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Studentloginscreen()));
                            },
                            child: const Text(
                              "Login?",
                              style: TextStyle(color: Colors.deepPurple),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                top: 80,
                left: 55,
                child: TopAnime(
                  2,
                  20,
                  curve: Curves.fastOutSlowIn,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                      Text(
                        "Create your account",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 17),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

signup(
  fullname,
  email,
  contactNumber,
  password,
) async {
  try {
    var response =
        await http.post(Uri.parse('http://10.0.2.2:4446/auth/signup'),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(<String, String>{
              'name': fullname,
              'email': email,
              'contactNumber': contactNumber,
              'password': password,
              'type': "applicant"
            }));
    print(response.body);
    Map<String, dynamic> user = jsonDecode(response.body);

    var error = user['error'];

    if (response.statusCode == 200) {
      // Fluttertoast.showToast(
      //     msg: name,
      //     toastLength: Toast.LENGTH_SHORT,
      //     gravity: ToastGravity.CENTER,
      //     timeInSecForIosWeb: 3,
      //     backgroundColor: Colors.red,
      //     textColor: Colors.white,
      //     fontSize: 16.0);
      Get.to(() => Studentloginscreen());
    } else {
      Fluttertoast.showToast(
          msg: error,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  } catch (e) {
    print(e);
  }
}
