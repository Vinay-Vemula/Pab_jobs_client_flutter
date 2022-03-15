import 'package:flutter/material.dart';

class Hire_Train extends StatelessWidget {
  const Hire_Train({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: InkWell(
            child: Icon(Icons.arrow_back_ios),
            onTap: () {
              Navigator.pop(context);
            }),
      ),
      body: Container(
        //color: Colors.grey,
        child: Text(
          "Hire & Train",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
