import 'package:flutter/material.dart';

class onlineExams extends StatelessWidget {
  const onlineExams({Key? key}) : super(key: key);

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
          "Online Exams",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
