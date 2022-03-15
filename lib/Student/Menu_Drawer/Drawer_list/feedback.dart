import 'package:flutter/material.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: InkWell(child: Icon(Icons.arrow_back_ios),
        onTap:(){Navigator.pop(context);} ) ,),
      body: Container(
        //color: Colors.grey,
        child: Text("Feedback", style: TextStyle(fontSize: 50),),
      ) ,
    );
  }
}