import 'package:flutter/material.dart';
import 'package:pab_jobs/Student/mainscreens/profile/Profile_info.dart';

class Emp_edit extends StatefulWidget {
  const Emp_edit({Key? key}) : super(key: key);

  @override
  State<Emp_edit> createState() => _Emp_editState();
}

class _Emp_editState extends State<Emp_edit> {
  String _currentCompany = 'Yes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Edit Employment Information'),
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
                  Text(
                    'Employment Information',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      labelText: 'Total Experience',
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: 'Experience in Years',
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
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      hintText: 'Enter Your Designation',
                      labelText: 'Your Designation',
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
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      hintText: 'Enter Organization Details',
                      labelText: 'Your Organization',
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
                        'Current Company',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      ListTile(
                        leading: Radio<String>(
                          activeColor: Colors.black,
                          value: 'Yes',
                          focusColor: Colors.black,
                          //fillColor: Colors.purple,
                          groupValue: _currentCompany,
                          onChanged: (value) {
                            setState(() {
                              _currentCompany = value!;
                            });
                          },
                        ),
                        title: const Text('Yes'),
                      ),
                      ListTile(
                        leading: Radio<String>(
                          activeColor: Colors.black,
                          value: 'No',
                          groupValue: _currentCompany,
                          onChanged: (value) {
                            setState(() {
                              _currentCompany = value!;
                            });
                          },
                        ),
                        title: const Text('No'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          border: OutlineInputBorder(borderSide: BorderSide()),
                          hintText: 'Job Profile',
                        ),
                        maxLines: 5,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          border: OutlineInputBorder(borderSide: BorderSide()),
                          hintText: 'Enter Notice period',
                        ),
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
                                  borderRadius: BorderRadius.circular(10)),
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
      ),
    );
  }
}
