import 'package:flutter/material.dart';
import 'package:pab_jobs/Student/mainscreens/profile/Profile_info.dart';


class Inter_Screen extends StatefulWidget {
  const Inter_Screen({Key? key}) : super(key: key);

  @override
  State<Inter_Screen> createState() => _Inter_ScreenState();
}

class _Inter_ScreenState extends State<Inter_Screen> {
  String _courseType = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Edit Intermediate Details',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfileInfo()));
          },
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(26.0),
                child: Card(
                  elevation: 16,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26.0)),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            border:
                                OutlineInputBorder(borderSide: BorderSide()),
                            labelText: 'Course Type',
                            //labelStyle: TextStyle(color: Colors.purple),
                            hintText: 'Inter/Diploma..',
                            // prefixIcon: Icon(
                            //   Icons.person,
                            //   color: Colors.purple,
                            // )
                          ),
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
                            border:
                                OutlineInputBorder(borderSide: BorderSide()),
                            hintText: 'Specialization in..',
                            // labelText: 'Course',
                            // labelStyle: TextStyle(color: Colors.purple),
                          ),
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
                            border:
                                OutlineInputBorder(borderSide: BorderSide()),
                            hintText: 'Enter your college name',
                            // labelText: 'University/College',
                            // labelStyle: TextStyle(color: Colors.purple),
                          ),
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
                            border:
                                OutlineInputBorder(borderSide: BorderSide()),
                            hintText: 'Year of Passing',
                            // labelText: 'Specialization',
                            // labelStyle: TextStyle(color: Colors.purple),
                          ),
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
                            border:
                                OutlineInputBorder(borderSide: BorderSide()),
                            hintText: '% of marks obtained',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Course Type',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            ListTile(
                              leading: Radio<String>(
                                activeColor: Colors.black,
                                value: 'FullTime',
                                focusColor: Colors.black,
                                //fillColor: Colors.purple,
                                groupValue: _courseType,
                                onChanged: (value) {
                                  setState(() {
                                    _courseType = value!;
                                  });
                                },
                              ),
                              title: const Text('FullTime'),
                            ),
                            ListTile(
                              leading: Radio<String>(
                                activeColor: Colors.black,
                                value: 'PartTime',
                                groupValue: _courseType,
                                onChanged: (value) {
                                  setState(() {
                                    _courseType = value!;
                                  });
                                },
                              ),
                              title: const Text('PartTime'),
                            ),
                            ListTile(
                              leading: Radio<String>(
                                activeColor: Colors.black,
                                value: 'Distance/Correspondence',
                                groupValue: _courseType,
                                onChanged: (value) {
                                  setState(() {
                                    _courseType = value!;
                                  });
                                },
                              ),
                              title: const Text('Distance/Correspondence'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        Container(
                          height: 60,
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
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
            ]),
          ),
        ),
      ),
    );
  }
}
