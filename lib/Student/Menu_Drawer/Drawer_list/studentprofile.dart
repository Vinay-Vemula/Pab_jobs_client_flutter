import 'package:flutter/material.dart';

class Student_ProfileForm extends StatelessWidget {
  const Student_ProfileForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: InkWell(child: Icon(Icons.arrow_back_ios),
        onTap:(){Navigator.pop(context);} ) ,),
      body: Container(
        //color: Colors.grey,
        child: Text("Profile", style: TextStyle(fontSize: 50),),
      ) ,
    );
  }
}