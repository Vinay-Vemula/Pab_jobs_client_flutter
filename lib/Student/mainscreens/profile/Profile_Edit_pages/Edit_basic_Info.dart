import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:file_picker/file_picker.dart';
import 'package:pab_jobs/Student/mainscreens/profile/Profile_info.dart';

final _formKey = GlobalKey<FormState>();

String yourName = '';
String email = '';
String education = '';
String experience = '';
String skills = '';
String currentlocation = '';
String resumeHeadline = '';
String contactNumber = '';
String _selectedGender = 'male';

class basicInfo_edit extends StatefulWidget {
  const basicInfo_edit({Key? key}) : super(key: key);

  @override
  State<basicInfo_edit> createState() => _basicInfo_editState();
}

class _basicInfo_editState extends State<basicInfo_edit> {
  String _selectedExperience = 'Fresher';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Edit Basic Information'),
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
        child: Column(children: [
          Container(
            child: Column(
              children: [
                // margin: const EdgeInsets.symmetric(horizontal: 35),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // IconButton(
                    //     onPressed: () {
                    //       Navigator.pop(context);
                    //     },
                    //     icon: Icon(
                    //       Icons.arrow_back_ios,
                    //       size: 20,
                    //       color: Colors.black,
                    //     ))
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Form(
                    key: _formKey,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      // CircleAvatar(
                      //   radius: 60,
                      //   backgroundColor: Colors.purpleAccent[100],
                      //   // backgroundImage: Image.file();
                      // ),

                      SizedBox(
                        height: 16,
                      ),

                      Card(
                        elevation: 16,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.0)),
                        child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Column(
                                  children: [
                                    Stack(children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 40.0,
                                        child: ClipOval(
                                            child: Icon(
                                          Icons.account_circle,
                                          size: 45,
                                          color: Colors.black,
                                        )),
                                      ),
                                      Positioned(
                                          bottom: 0.5,
                                          right: 1,
                                          child: Container(
                                            height: 20,
                                            width: 20,
                                            child: Icon(Icons.add_a_photo,
                                                color: Colors.black),
                                            decoration: BoxDecoration(
                                                //color: Colors.deepPurple,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                          ))
                                    ]),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Vinay Vemula',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      labelText: 'Full Name',
                                      labelStyle: TextStyle(color: Colors.grey),
                                      prefixIcon: Icon(
                                        Icons.person,
                                        color: Colors.black,
                                      )),
                                  validator: (value) {
                                    if (value == null || value.trim().isEmpty) {
                                      return 'This field is required';
                                    }
                                    if (value.trim().length < 4) {
                                      return 'YourName must be at least 4 characters in length';
                                    }
                                    // Return null if the entered useryourName is valid
                                    return null;
                                  },
                                  onChanged: (value) => yourName = value,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Experience:',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    ListTile(
                                      leading: Radio<String>(
                                        activeColor: Colors.black,
                                        value: 'Fresher',
                                        //fillColor: Colors.purple,
                                        groupValue: _selectedExperience,
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedExperience = value!;
                                          });
                                        },
                                      ),
                                      title: const Text('Fresher'),
                                    ),
                                    ListTile(
                                      leading: Radio<String>(
                                        activeColor: Colors.black,
                                        value: 'Experienced',
                                        groupValue: _selectedExperience,
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedExperience = value!;
                                          });
                                        },
                                      ),
                                      title: const Text('Experienced'),
                                    ),
                                    const SizedBox(height: 15),
                                    Text(_selectedExperience == 'Fresher'
                                        ? 'Hello Get Your First Job!'
                                        : 'Hi Switch your job!')
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      labelText: 'Current Location',
                                      labelStyle: TextStyle(color: Colors.grey),
                                      prefixIcon: Icon(
                                        Icons.pin_drop_outlined,
                                        color: Colors.black,
                                      )),
                                  validator: (value) {
                                    if (value == null || value.trim().isEmpty) {
                                      return 'This field is required';
                                    }
                                    if (value.trim().length < 4) {
                                      return 'User your Locaiton must be at least 4 characters in length';
                                    }
                                    // Return null if the entered useryourName is valid
                                    return null;
                                  },
                                  onChanged: (value) => currentlocation = value,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      labelText: 'Email',
                                      labelStyle: TextStyle(color: Colors.grey),
                                      prefixIcon: Icon(
                                        Icons.email,
                                        color: Colors.black,
                                      )),
                                  validator: (value) {
                                    if (value == null || value.trim().isEmpty) {
                                      return 'Please enter your email address';
                                    }
                                    // Check if the entered email has the right format
                                    if (!RegExp(r'\S+@\S+\.\S+')
                                        .hasMatch(value)) {
                                      return 'Please enter a valid email address';
                                    }
                                    // Return null if the entered email is valid
                                    return null;
                                  },
                                  onChanged: (value) => email = value,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      labelText: 'Contact Number',
                                      labelStyle: TextStyle(color: Colors.grey),
                                      prefixIcon: Icon(
                                        Icons.phone,
                                        color: Colors.black,
                                      )),
                                  //obscureText: true,
                                  validator: (value) {
                                    if (value == null || value.trim().isEmpty) {
                                      return 'This field is required';
                                    }
                                    if (value.trim().length < 10) {
                                      return 'Invalid Number';
                                    }
                                    // Return null if the entered password is valid
                                    return null;
                                  },
                                  onChanged: (value) => contactNumber = value,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      labelText: 'Education',
                                      labelStyle:
                                          TextStyle(color: Colors.black),
                                      prefixIcon: Icon(
                                        Icons.view_headline_rounded,
                                        color: Colors.black,
                                      )),
                                  //obscureText: true,
                                  validator: (value) {
                                    if (value == null || value.trim().isEmpty) {
                                      return 'This field is required';
                                    }
                                    if (value.trim().length < 25) {
                                      return 'Education must be at least 15 characters in length';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) => education = value,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 150,
                                  width: 2000,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 3),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () async {
                                            final result = await FilePicker
                                                .platform
                                                .pickFiles(allowMultiple: true);
                                          },
                                          icon: Icon(Icons.file_copy)),
                                      Text("Upload resume")
                                    ],
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
                            )),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

//Widget basicInfo_edit(BuildContext context) {
// return Scaffold(
//   appBar: AppBar(
//     backgroundColor: Colors.black,
//     title: Text('Edit Basic Information'),
//     leading: IconButton(
//       icon: Icon(Icons.arrow_back),
//       onPressed: () {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => ProfileInfo()));
//       },
//     ),
//   ),
//   body: SingleChildScrollView(
//     child: Column(children: [
//       Container(
//         child: Column(
//           children: [
//             // margin: const EdgeInsets.symmetric(horizontal: 35),

//             Padding(
//               padding: EdgeInsets.fromLTRB(30, 30, 30, 50),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   IconButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       icon: Icon(
//                         Icons.arrow_back_ios,
//                         size: 20,
//                         color: Colors.black,
//                       ))
//                 ],
//               ),
//             ),
//             //  SizedBox(height: 15),
//             // Stack(children: [
//             //   CircleAvatar(
//             //     backgroundColor: Colors.deepPurple,
//             //     radius: 80.0,
//             //     child: ClipOval(
//             //       child: Image.network(
//             //         'https://cdn.dribbble.com/users/1223630/screenshots/8115260/char_still_2x.gif?compress=1&resize=400x300',
//             //         height: 150,
//             //         width: 150,
//             //         fit: BoxFit.cover,
//             //       ),
//             //     ),
//             //   ),
//             //   Positioned(
//             //       bottom: 1,
//             //       right: 1,
//             //       child: Container(
//             //         height: 40,
//             //         width: 40,
//             //         child: Icon(
//             //           Icons.add_a_photo,
//             //           color: Colors.white,
//             //         ),
//             //         decoration: BoxDecoration(
//             //             color: Colors.deepPurple,
//             //             borderRadius: BorderRadius.all(Radius.circular(20))),
//             //       ))
//             // ]),
//             Padding(
//               padding: const EdgeInsets.all(20),
//               child: Form(
//                 key: _formKey,
//                 child: Column(mainAxisSize: MainAxisSize.min, children: [
//                   // CircleAvatar(
//                   //   radius: 60,
//                   //   backgroundColor: Colors.purpleAccent[100],
//                   //   // backgroundImage: Image.file();
//                   // ),

//                   SizedBox(
//                     height: 16,
//                   ),

//                   Card(
//                     elevation: 16,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(26.0)),
//                     child: Padding(
//                         padding: EdgeInsets.all(20),
//                         child: Column(
//                           children: [
//                             SizedBox(
//                               height: 20,
//                             ),
//                             ProfilePic(context),
//                             TextFormField(
//                               decoration: const InputDecoration(
//                                   focusedBorder: OutlineInputBorder(
//                                       borderSide:
//                                           BorderSide(color: Colors.black)),
//                                   labelText: 'Full Name',
//                                   labelStyle: TextStyle(color: Colors.grey),
//                                   prefixIcon: Icon(
//                                     Icons.person,
//                                     color: Colors.black,
//                                   )),
//                               validator: (value) {
//                                 if (value == null || value.trim().isEmpty) {
//                                   return 'This field is required';
//                                 }
//                                 if (value.trim().length < 4) {
//                                   return 'YourName must be at least 4 characters in length';
//                                 }
//                                 // Return null if the entered useryourName is valid
//                                 return null;
//                               },
//                               onChanged: (value) => yourName = value,
//                             ),
//                             SizedBox(
//                               height: 30,
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 const Text(
//                                   'Experience:',
//                                   style: TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.black),
//                                 ),
//                                 ListTile(
//                                   leading: Radio<String>(
//                                     activeColor: Colors.black,
//                                     value: 'Fresher',
//                                     //fillColor: Colors.purple,
//                                     groupValue: _selectedExperience,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _selectedExperience = value!;
//                                       });
//                                     },
//                                   ),
//                                   title: const Text('Fresher'),
//                                 ),
//                                 ListTile(
//                                   leading: Radio<String>(
//                                     activeColor: Colors.black,
//                                     value: 'Experienced',
//                                     groupValue: _selectedExperience,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _selectedExperience = value!;
//                                       });
//                                     },
//                                   ),
//                                   title: const Text('Experienced'),
//                                 ),
//                                 const SizedBox(height: 15),
//                                 Text(_selectedExperience == 'Fresher'
//                                     ? 'Hello Get Your First Job!'
//                                     : 'Hi Switch your job!')
//                               ],
//                             ),
//                             SizedBox(
//                               height: 30,
//                             ),
//                             TextFormField(
//                               decoration: const InputDecoration(
//                                   focusedBorder: OutlineInputBorder(
//                                       borderSide:
//                                           BorderSide(color: Colors.black)),
//                                   labelText: 'Current Location',
//                                   labelStyle: TextStyle(color: Colors.grey),
//                                   prefixIcon: Icon(
//                                     Icons.pin_drop_outlined,
//                                     color: Colors.black,
//                                   )),
//                               validator: (value) {
//                                 if (value == null || value.trim().isEmpty) {
//                                   return 'This field is required';
//                                 }
//                                 if (value.trim().length < 4) {
//                                   return 'User your Locaiton must be at least 4 characters in length';
//                                 }
//                                 // Return null if the entered useryourName is valid
//                                 return null;
//                               },
//                               onChanged: (value) => currentlocation = value,
//                             ),
//                             SizedBox(
//                               height: 30,
//                             ),
//                             TextFormField(
//                               decoration: const InputDecoration(
//                                   focusedBorder: OutlineInputBorder(
//                                       borderSide:
//                                           BorderSide(color: Colors.black)),
//                                   labelText: 'Email',
//                                   labelStyle: TextStyle(color: Colors.grey),
//                                   prefixIcon: Icon(
//                                     Icons.email,
//                                     color: Colors.black,
//                                   )),
//                               validator: (value) {
//                                 if (value == null || value.trim().isEmpty) {
//                                   return 'Please enter your email address';
//                                 }
//                                 // Check if the entered email has the right format
//                                 if (!RegExp(r'\S+@\S+\.\S+')
//                                     .hasMatch(value)) {
//                                   return 'Please enter a valid email address';
//                                 }
//                                 // Return null if the entered email is valid
//                                 return null;
//                               },
//                               onChanged: (value) => email = value,
//                             ),
//                             SizedBox(
//                               height: 30,
//                             ),
//                             TextFormField(
//                               decoration: const InputDecoration(
//                                   focusedBorder: OutlineInputBorder(
//                                       borderSide:
//                                           BorderSide(color: Colors.black)),
//                                   labelText: 'Contact Number',
//                                   labelStyle: TextStyle(color: Colors.grey),
//                                   prefixIcon: Icon(
//                                     Icons.phone,
//                                     color: Colors.black,
//                                   )),
//                               //obscureText: true,
//                               validator: (value) {
//                                 if (value == null || value.trim().isEmpty) {
//                                   return 'This field is required';
//                                 }
//                                 if (value.trim().length < 10) {
//                                   return 'Invalid Number';
//                                 }
//                                 // Return null if the entered password is valid
//                                 return null;
//                               },
//                               onChanged: (value) => contactNumber = value,
//                             ),
//                             SizedBox(
//                               height: 30,
//                             ),
//                             SizedBox(
//                               height: 30,
//                             ),
//                             TextFormField(
//                               decoration: const InputDecoration(
//                                   focusedBorder: OutlineInputBorder(
//                                       borderSide:
//                                           BorderSide(color: Colors.black)),
//                                   labelText: 'Education',
//                                   labelStyle: TextStyle(color: Colors.black),
//                                   prefixIcon: Icon(
//                                     Icons.view_headline_rounded,
//                                     color: Colors.black,
//                                   )),
//                               //obscureText: true,
//                               validator: (value) {
//                                 if (value == null || value.trim().isEmpty) {
//                                   return 'This field is required';
//                                 }
//                                 if (value.trim().length < 25) {
//                                   return 'Education must be at least 15 characters in length';
//                                 }
//                                 return null;
//                               },
//                               onChanged: (value) => education = value,
//                             ),
//                             SizedBox(
//                               height: 20,
//                             ),
//                             Container(
//                               height: 60,
//                               width: 150,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(10.0),
//                                 child: ElevatedButton(
//                                     style: ElevatedButton.styleFrom(
//                                         shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(10)),
//                                         primary: Colors.black),
//                                     onPressed: () {},
//                                     child: Text('Save Changes')),
//                               ),
//                             ),
//                             SizedBox(
//                               height: 20,
//                             ),
//                           ],
//                         )),
//                   ),
//                 ]),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ]),
//   ),
// );
//}

class edit_profile_image extends StatefulWidget {
  const edit_profile_image({Key? key}) : super(key: key);

  @override
  State<edit_profile_image> createState() => _edit_profile_imageState();
}

class _edit_profile_imageState extends State<edit_profile_image> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CircleAvatar(
        backgroundColor: Colors.black,
        radius: 80.0,
        child: ClipOval(
          child: Image.network(
            'https://cdn.dribbble.com/users/1223630/screenshots/8115260/char_still_2x.gif?compress=1&resize=400x300',
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
          bottom: 1,
          right: 1,
          child: Container(
            height: 40,
            width: 40,
            child: Icon(
              Icons.add_a_photo,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ))
    ]);
  }
}
