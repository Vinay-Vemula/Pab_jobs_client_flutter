import 'package:flutter/material.dart';
import 'package:pab_jobs/Student/mainscreens/profile/Profile_info.dart';

String date = "";
DateTime selectedDate = DateTime.now();

class Personal_edit extends StatefulWidget {
  const Personal_edit({Key? key}) : super(key: key);

  @override
  State<Personal_edit> createState() => _Personal_editState();
}

class _Personal_editState extends State<Personal_edit> {
  DateTime selectedDate = DateTime.now();

  String date = "";
  String _maritalStatus = '';
  String _selectedGender = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Edit Personal Information',
          style: TextStyle(color: Colors.black),
        ),
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
          padding: const EdgeInsets.all(26.0),
          child: Card(
            elevation: 16,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26.0)),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  // Text(
                  //   'Personal Details',
                  //   style: TextStyle(
                  //       fontSize: 18,
                  //       fontWeight: FontWeight.bold,
                  //       color: Colors.black),
                  // ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        'Date Of Birth',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: ElevatedButton(
                          onPressed: () {
                            _selectDate(context);
                          },
                          style:
                              ElevatedButton.styleFrom(primary: Colors.black),
                          child: Container(
                            child: Row(
                              children: [
                                Text(
                                    "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}"),
                                // Text('D.O.B',
                                //     style: TextStyle(
                                //       fontSize: 14,
                                //     )),
                                Icon(Icons.calendar_today),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   width: 16,
                      // ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Gender:',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      ListTile(
                        leading: Radio<String>(
                          activeColor: Colors.black,
                          value: 'Male',
                          //focusColor: Colors.purple,
                          //fillColor: Colors.purple,
                          groupValue: _selectedGender,
                          onChanged: (value) {
                            setState(() {
                              _selectedGender = value!;
                            });
                          },
                        ),
                        title: const Text('Male'),
                      ),
                      ListTile(
                        leading: Radio<String>(
                          activeColor: Colors.black,
                          value: 'Female',
                          groupValue: _selectedGender,
                          onChanged: (value) {
                            setState(() {
                              _selectedGender = value!;
                            });
                          },
                        ),
                        title: const Text('Female'),
                      ),
                      ListTile(
                        leading: Radio<String>(
                          activeColor: Colors.black,
                          value: 'Others',
                          groupValue: _selectedGender,
                          onChanged: (value) {
                            setState(() {
                              _selectedGender = value!;
                            });
                          },
                        ),
                        title: const Text('Others'),
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                  TextField(
                    maxLines: 3,
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                        color: Colors.black,
                      )),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      hintText: 'Enter complete Address',
                      labelText: 'Permanent Address',
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
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      hintText: 'Enter PIN Code',
                      labelText: 'PIN code',
                      // labelStyle: TextStyle(color: Colors.purple),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Marital Status',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      ListTile(
                        leading: Radio<String>(
                          activeColor: Colors.black,
                          value: 'Married',
                          focusColor: Colors.black,
                          //fillColor: Colors.purple,
                          groupValue: _maritalStatus,
                          onChanged: (value) {
                            setState(() {
                              _maritalStatus = value!;
                            });
                          },
                        ),
                        title: const Text('Married'),
                      ),
                      ListTile(
                        leading: Radio<String>(
                          activeColor: Colors.black,
                          value: 'Unmarried',
                          groupValue: _maritalStatus,
                          onChanged: (value) {
                            setState(() {
                              _maritalStatus = value!;
                            });
                          },
                        ),
                        title: const Text('Unmarried'),
                      ),
                      ListTile(
                        leading: Radio<String>(
                          activeColor: Colors.black,
                          value: 'Others',
                          groupValue: _maritalStatus,
                          onChanged: (value) {
                            setState(() {
                              _maritalStatus = value!;
                            });
                          },
                        ),
                        title: const Text('Others'),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          border: OutlineInputBorder(borderSide: BorderSide()),
                          hintText: 'Languages Known',
                        ),
                      ),
                      SizedBox(
                        height: 20,
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
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate)
      setState(() {
        selectedDate = selected;
      });
  }
}
