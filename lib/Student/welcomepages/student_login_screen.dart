// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:fluttertoast/fluttertoast.dart';
import 'package:pab_jobs/Student/utils/animations.dart';
import 'package:pab_jobs/Student/welcomepages/forgetpassword_screen.dart';
import 'package:pab_jobs/Student/welcomepages/otp_screen.dart';
import 'package:pab_jobs/Student/welcomepages/student_signup_screen.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../main.dart';

class Studentloginscreen extends StatefulWidget {
  @override
  State<Studentloginscreen> createState() => _StudentloginscreenState();

  static getAndSaveToken() {}
}

class _StudentloginscreenState extends State<Studentloginscreen> {
  final _formkey = GlobalKey<FormState>();
  var email = '';
  var password = '';
  var webtoken = '';

  bool hide = true;

  final storage = const FlutterSecureStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff04064d),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            BottomAnime(
              2,
              20,
              curve: Curves.easeInOut,
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
            TopAnime(
              2,
              20,
              curve: Curves.fastOutSlowIn,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                margin: const EdgeInsets.only(top: 230, left: 50, right: 50),
                width: double.infinity,
                height: 450,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black38,
                          spreadRadius: 0.1,
                          blurRadius: 10)
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
                          'LOGIN',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        prefixIcon: const Icon(
                          Icons.phone,
                          color: Color(0xff04064d),
                        ),
                        labelText: 'Email Id',
                        hintText: "Enter your email id",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email id';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        email = value;
                      },
                    ),
                    const SizedBox(
                      height: 20,
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
                          color: Color(0xff04064d),
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
                      },
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Forgetpassword()));
                        },
                        child: const Text(
                          "Forget Password?",
                          style: TextStyle(color: Color(0xff04064d)),
                        ),
                      ),
                    ),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xff04064d),
                          shadowColor: Colors.black,
                          //padding: const EdgeInsets.symmetric(horizontal: ),
                        ),
                        onPressed: () async {
                          signin(email, password);
                          // var jwt = signin(email, password);

                          // if (jwt != null) {
                          //   storage.write(key: "token", value: webtoken);
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => Zoom()));
                          // }
                          if (_formkey.currentState!.validate()) {
                            print("successful");

                            return;
                          } else {
                            print("UnSuccessfull");
                          }
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 70),
                          child: Expanded(child: Text("Login")),
                        )),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginwithOTP()));
                      },
                      child: const Text(
                        "Login with OTP",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff04064d)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account"),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Studentsignupscreen()));
                            },
                            child: const Text(
                              "Signup",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff04064d)),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: 130,
                left: 55,
                child: TopAnime(
                  2,
                  20,
                  curve: Curves.fastOutSlowIn,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Welcome",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                      Text(
                        "Login access to your account",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 17),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  getAndSaveToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = webtoken;
    //await prefs.setInt('jwt', token);
    print(webtoken);
  }

  signin(
    email,
    password,
  ) async {
    // ignore: duplicate_ignore
    try {
      var response =
          await http.post(Uri.parse('http://10.0.2.2:4446/auth/login'),
              headers: <String, String>{
                'Content-Type': 'application/json; charset=UTF-8',
              },
              body: jsonEncode(<String, dynamic>{
                'email': email,
                'password': password,
              }));

      // print(response.body);

      Map<String, dynamic> user = jsonDecode(response.body);
      webtoken = user['token'];
      var type = user['type'];
      print(webtoken);
      await storage.write(key: "token", value: webtoken);
      await storage.write(key: 'type', value: type);
      //print(storage);
      if (response.statusCode == 200) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Zoom()));
        Fluttertoast.showToast(
            msg: "Sucessful",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 3,
            backgroundColor: const Color(0xff04064d),
            textColor: Colors.white,
            fontSize: 16.0);
      } else {
        Fluttertoast.showToast(
            msg: "error",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 3,
            backgroundColor: const Color(0xff04064d),
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } catch (e) {
      print(e);
    }
  }
}
