import 'package:flutter/material.dart';
import 'package:pab_jobs/Student/mainscreens/profile/Profile_info.dart';

class UG_Screen extends StatefulWidget {
  @override
  UG_ScreenWidget createState() => UG_ScreenWidget();
}

class UG_ScreenWidget extends State {
  // Default Radio Button Selected Item When App Starts.
  String _courseType = '';
  // Group Value for Radio Button.
  int id = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Edit UG Details', style: TextStyle(color: Colors.black)),
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
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            border:
                                OutlineInputBorder(borderSide: BorderSide()),
                            labelText: 'Course Type',
                            //labelStyle: TextStyle(color: Colors.purple),
                            hintText: 'B.Tech,B.sc..',
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
                            labelText: 'University/College',
                            labelStyle: TextStyle(color: Colors.black),
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
                            // labelText: 'Specialization',
                            // labelStyle: TextStyle(color: Colors.purple),
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
                            SizedBox(
                              height: 15,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
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
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Year Of Passed Out',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide()),
                                hintText: 'Passed Out Year',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text('Marks in % or CGPA',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide()),
                                hintText: 'Obtained Percentage',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 20,
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
                        SizedBox(
                          height: 20,
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
