import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pab_jobs/Student/utils/animations.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({Key? key}) : super(key: key);

  @override
  _ForgetpasswordState createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  @override
  Widget build(BuildContext context) {
    return _ForgetPassword();
  }

  _ForgetPassword() {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
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
                      height: 60,
                    ),
                    const Icon(
                      Icons.system_security_update_warning_sharp,
                      size: 60,
                      color: Colors.deepPurple,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Forget Password',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Enter your mobile number we will sent you Password to login',
                      style: TextStyle(fontSize: 15, color: Colors.black54),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Container(
                            height: 47,
                            width: 50,
                            padding: const EdgeInsets.only(bottom: 10),
                            margin: const EdgeInsets.only(right: 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: Colors.grey)),
                            child: const Center(
                              child: Text(
                                "+91",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                            flex: 5,
                            child: TextFormField(
                              maxLines: 1,
                              decoration: const InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(6, 10, 0, 0),
                                  hintText: "Mobile Number",
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1)),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1))),
                              keyboardType: TextInputType.number,
                              onChanged: (String value) {
                                // if (value.length > 9) {
                                //    mobileNo = value;
                                //}
                              },
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          shadowColor: Colors.black,
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                        ),
                        onPressed: () {},
                        child: const Expanded(
                            child: Text(
                          "Send Password",
                          style: TextStyle(fontSize: 13),
                        )))
                  ],
                ),
              ),
            ),
            Positioned(
                top: 130,
                left: 40,
                child: TopAnime(
                  2,
                  20,
                  curve: Curves.fastOutSlowIn,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Forget Password",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                      Text(
                        "We generate password through Sms",
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
}
