import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pab_jobs/Student/utils/animations.dart';

import 'package:sms_autofill/sms_autofill.dart';

class VerifyOtp extends StatefulWidget {
  final String? mobileNo;
  final String? otpHash;
  const VerifyOtp({this.mobileNo, this.otpHash});

  @override
  _VerifyOtpState createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  String _otpCode = "";
  final _otpCodeLength = 6;
  bool isAPICallprocess = false;
  @override
  Widget build(BuildContext context) {
    return VerifyOtp();
  }

  VerifyOtp() {
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
                      Icons.security_update_good_sharp,
                      size: 60,
                      color: Colors.deepPurple,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Verification',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Enter OTP code sent to your number \n+91-",
                      //${widget.mobileNo}",
                      style: TextStyle(fontSize: 15, color: Colors.black54),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                      child: PinFieldAutoFill(
                        decoration: UnderlineDecoration(
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            colorBuilder: FixedColorBuilder(Colors.black)),
                        //  currentCode:_otpCode,
                        //  codeLength:_otpCodeLength ,
                        // onCodeChanged: (code) {
                        //   if (code!.length == _otpCodeLength) {
                        //     FocusScope.of(context).requestFocus(FocusNode());
                        //   }
                        // },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          shadowColor: Colors.black,
                          padding: const EdgeInsets.symmetric(horizontal: 100),
                        ),
                        onPressed: () {},
                        child: const Expanded(child: Text("Login ")))
                  ],
                ),
              ),
            ),
            Positioned(
                top: 130,
                left: 30,
                child: TopAnime(
                  2,
                  20,
                  curve: Curves.fastOutSlowIn,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Verification",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                      Text(
                        "Login with mobile number by otp verification",
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
