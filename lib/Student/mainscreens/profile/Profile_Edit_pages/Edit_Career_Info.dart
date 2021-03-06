import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pab_jobs/Student/mainscreens/profile/Profile_info.dart';

final _formKey = GlobalKey<FormState>();
String _currentCompany = 'Yes';

String _courseType = '';

String resumeHeadline = '';
String profileSummary = '';
String skills = '';

Widget career_info_edit(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(
        ' Edit Career Information',
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ),
    body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(26),
        child: Card(
          elevation: 16,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              TextFormField(
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: "Current Industry",
                    hintText: 'IT Services & Counsulting',
                    // labelStyle: TextStyle(color: Colors.purple),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
                    )),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'This field is required';
                  }
                  return null;
                },
                onChanged: (value) => resumeHeadline = value,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: "Department",
                    hintText: 'Engineeering - Software',
                    // labelStyle: TextStyle(color: Colors.purple),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
                    )),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'This field is required';
                  }
                  return null;
                },
                onChanged: (value) => resumeHeadline = value,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: "Role Category",
                    hintText: 'Software Developmert',
                    // labelStyle: TextStyle(color: Colors.purple),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
                    )),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'This field is required';
                  }
                  return null;
                },
                onChanged: (value) => resumeHeadline = value,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: "Job Role",
                    hintText: 'Full Stack Developer',
                    // labelStyle: TextStyle(color: Colors.purple),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
                    )),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'This field is required';
                  }
                  return null;
                },
                onChanged: (value) => resumeHeadline = value,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: "Desired Job Type",
                    hintText: 'Contractual, Permanent',
                    // labelStyle: TextStyle(color: Colors.purple),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
                    )),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'This field is required';
                  }
                  return null;
                },
                onChanged: (value) => resumeHeadline = value,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: "Desired Employment Type",
                    hintText: 'Full Time',
                    // labelStyle: TextStyle(color: Colors.purple),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
                    )),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'This field is required';
                  }
                  return null;
                },
                onChanged: (value) => resumeHeadline = value,
              ),
              SizedBox(
                height: 40,
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
              SizedBox(
                height: 20,
              ),
            ]),
          ),
        ),
      ),
    ),
  );
}
