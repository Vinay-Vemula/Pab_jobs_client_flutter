import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import 'package:expandable_text/expandable_text.dart';
import 'package:pab_jobs/Student/mainscreens/profile/Profile_Edit_pages/Dialogue/inter.dart';
import 'package:pab_jobs/Student/mainscreens/profile/Profile_Edit_pages/Dialogue/pg_screen.dart';
import 'package:pab_jobs/Student/mainscreens/profile/Profile_Edit_pages/Dialogue/tenth.dart';
import 'package:pab_jobs/Student/mainscreens/profile/Profile_Edit_pages/Dialogue/ug_screen.dart';
import 'package:pab_jobs/Student/mainscreens/profile/Profile_Edit_pages/Edit_Career_Info.dart';
import 'package:pab_jobs/Student/mainscreens/profile/Profile_Edit_pages/Edit_basic_Info.dart';
import 'package:pab_jobs/Student/mainscreens/profile/Profile_Edit_pages/emp_edit.dart';
import 'package:pab_jobs/Student/mainscreens/profile/Profile_Edit_pages/persoal_edit.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  _ProfileInfoState createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'My Profile',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                InkWell(
                  child: basicInfo(context),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => basicInfo_edit()));
                  },
                ),
                SizedBox(
                  height: 13,
                ),
                EducationInfo(context),
                SizedBox(
                  height: 13,
                ),
                InkWell(
                  child: CareerInfo(context),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => career_info_edit(context),
                        ));
                  },
                ),
                SizedBox(
                  height: 13,
                ),
                InkWell(
                  child: EmploymentInfo(context),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Emp_edit()));
                  },
                ),
                SizedBox(
                  height: 13,
                ),
                InkWell(
                  child: PersonalInfo(context),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Personal_edit()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget ProfilePic(BuildContext context) {
  return Column(
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
              child: Icon(Icons.add_a_photo, color: Colors.black),
              decoration: BoxDecoration(
                  //color: Colors.deepPurple,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ))
      ]),
      SizedBox(
        height: 10,
      ),
      Text(
        'Vinay Vemula',
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    ],
  );
}

Widget basicInfo(BuildContext context) {
  return Card(
    //elevation: 16,
    //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.0)),
    child: Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        child: Column(
          children: [
            ProfilePic(context),
            SizedBox(height: 20),
            Row(children: [
              Icon(
                Icons.insert_chart,
                color: Colors.grey,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                'Fresher',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
            SizedBox(
              height: 5,
            ),
            Row(children: [
              Icon(
                Icons.pin_drop,
                color: Colors.grey,
              ),
              SizedBox(
                width: 6,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Text(
                  'Hyderabad/India',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ]),
            SizedBox(
              height: 5,
            ),
            Row(children: [
              Icon(
                Icons.mail,
                color: Colors.grey,
              ),
              SizedBox(
                width: 6,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Text(
                  'vinay.vemula@gmail.com',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ]),
            SizedBox(
              height: 5,
            ),
            Row(children: [
              Icon(
                Icons.mobile_friendly,
                color: Colors.grey,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                '9555666777',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ]),
            SizedBox(
              height: 5,
            ),

            // Row(children: [
            //   Icon(
            //     Icons.pin_drop,
            //     color: Colors.grey,
            //   ),
            //   SizedBox(
            //     width: 6,
            //   ),
            // ]
            // ),
          ],
        ),
      ),
    ),
  );
}

Widget EducationInfo(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(20),
    child: Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  child: Flexible(
                    fit: FlexFit.loose,
                    child: Text(
                      'Educational Information',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => dialogue_edu()));
                    },
                    icon: Icon(Icons.add, size: 30)),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  // elevation: 15,
                  margin: EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Flexible(
                      fit: FlexFit.loose,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Master of Business & Administration',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            'HR Management',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            'JNTU University',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            '2021',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            '80%',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  //elevation: 15,
                  margin: EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bachelor of Technology',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          'ECE',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'JNTU Kakinada',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '2019',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '98%',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  // elevation: 15,
                  margin: EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Intermediate',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          'Aditya Junior College',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Intermediate Board',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '2015',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '98.5%',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  //  elevation: 15,
                  margin: EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '10th Standard',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          'Bharadwaj E.M High School',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'S.S.C',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '2013',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '98%',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget CareerInfo(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(20),
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Career Information',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(
            height: 16,
          ),
          Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Current Industry",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  )),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "IT Services & Consulting",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )),
              SizedBox(
                height: 15,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Department",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  )),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Engineering - Software",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )),
              SizedBox(
                height: 15,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Role Category ",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  )),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Software Development",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )),
              SizedBox(
                height: 15,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Job Role",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  )),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Full Stack Developer",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )),
              SizedBox(
                height: 15,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Desired Job Type",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  )),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Contractual, Permanent",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )),
              SizedBox(
                height: 15,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Desired Employment Type",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  )),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Full Time",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )),
            ],
          ),
          // Row(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //           Icon(Icons.list_alt, color: Colors.black,),
          //       SizedBox(width: 10,),
          //   Container(
          //     child:Flexible(
          //           fit: FlexFit.loose,
          //             child: Column(
          //               mainAxisAlignment: MainAxisAlignment.start,
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 ExpandableText(
          //   'Expert in developing Responsive & Interactive websites. Expert in CSS3, HTML5, Bootstrap, and Angular JS. Very good knowledge of AMP, JavaScript, and JQuery.',style: TextStyle(fontSize:16),
          //   expandText: 'show more',
          //   collapseText: 'show less',
          //   maxLines: 2,
          //   linkColor: Colors.blueAccent,
          // ),
          //                   ],
          //                 ),
          //                ),
          //               ),
          //             ],
          //           ),
          // SizedBox(height: 15),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //   Icon(
          //     Icons.list_alt,
          //     color: Colors.black,
          //   ),
          //   SizedBox(
          //     width: 6,
          //   ),
          //   Container(
          //     child: Flexible(
          //       fit: FlexFit.loose,
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //                                       ExpandableText(
          //   'Strong in design and integration with intuitive problem-solving skills. Proficient in JAVA, C#, PYTHON, JAVASCRIPT, and SQL. Passionate about implementing and launching new projects. Ability to translate business requirements into technical solutions.',style: TextStyle(fontSize:16),
          //   expandText: 'show more',
          //   collapseText: 'show less',
          //   maxLines: 2,
          //   linkColor: Colors.blueAccent,
          // ),

          //         ],
          //       ),
          //     ),
          //   ),
          // ]),
          // SizedBox(
          //   height: 10,
          // ),
          // Row(children: [
          //   Icon(
          //     Icons.list_alt,
          //     color: Colors.black,
          //   ),
          //   SizedBox(
          //     width: 6,
          //   ),
          //   Text(
          //     'Flutter,Java,HTML,CSS',
          //     style: TextStyle(fontSize: 16, ),
          //   ),
          // ]),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    ),
  );
}

Widget EmploymentInfo(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(20),
    child: Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Flexible(
              fit: FlexFit.loose,
              child: Text(
                'Employment Information',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(children: [
            Icon(
              Icons.work_outline,
              color: Colors.grey,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              '2 Years',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
          SizedBox(
            height: 5,
          ),
          Row(children: [
            Icon(
              Icons.horizontal_split_outlined,
              color: Colors.grey,
            ),
            SizedBox(
              width: 6,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Text(
                'Flutter Developer',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ]),
          SizedBox(
            height: 5,
          ),
          Row(children: [
            Icon(
              Icons.home_work_outlined,
              color: Colors.grey,
            ),
            SizedBox(
              width: 6,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Text(
                'perfex Technologies',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ]),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.timelapse,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: ExpandableText(
                        'Support the entire application lifecycle (concept, design, test, release and support) ·\n Produce fully functional mobile applications writing ...',
                        style: TextStyle(fontSize: 16),
                        expandText: 'show more',
                        collapseText: 'show less',
                        maxLines: 2,
                        linkColor: Colors.blueAccent,
                      ),
                    ),
                  ]),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(children: [
            Icon(
              Icons.run_circle_outlined,
              color: Colors.grey,
            ),
            SizedBox(
              width: 6,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Text(
                '20 days NoticePeriod',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ]),
        ],
      ),
    ),
  );
}

Widget PersonalInfo(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(20),
    child: Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Personal Details',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Row(children: [
            Icon(
              Icons.date_range_outlined,
              color: Colors.grey,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              '1/1/2011',
              style: TextStyle(
                fontSize: 15,
                // fontWeight: FontWeight.bold
              ),
            ),
          ]),
          SizedBox(
            height: 5,
          ),
          Row(children: [
            Icon(
              Icons.person,
              color: Colors.grey,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              'Male',
              style: TextStyle(
                fontSize: 15,
                //fontWeight: FontWeight.bold
              ),
            ),
          ]),
          SizedBox(
            height: 5,
          ),
          Row(children: [
            Icon(
              Icons.house_siding_outlined,
              color: Colors.grey,
            ),
            SizedBox(
              width: 6,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Text(
                'D.no-3-36,street-5,Vijayawada, A.P',
                overflow: TextOverflow.fade,
                softWrap: true,
                style: TextStyle(
                  fontSize: 15,
                  // fontWeight: FontWeight.bold
                ),
              ),
            ),
          ]),
          SizedBox(
            height: 5,
          ),
          Row(children: [
            Icon(
              Icons.people_outline,
              color: Colors.grey,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              'UnMarried',
              style: TextStyle(
                fontSize: 15,
                //fontWeight: FontWeight.bold
              ),
            ),
          ]),
          SizedBox(
            height: 5,
          ),
          Row(children: [
            Icon(
              Icons.list,
              color: Colors.grey,
            ),
            SizedBox(
              width: 6,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Text(
                'Telugu,English,French',
                style: TextStyle(
                  fontSize: 15,
                  // fontWeight: FontWeight.bold
                ),
              ),
            ),
          ]),
        ],
      ),
    ),
  );
}

class dialogue_edu extends StatefulWidget {
  const dialogue_edu({Key? key}) : super(key: key);

  @override
  State<dialogue_edu> createState() => _dialogue_eduState();
}

class _dialogue_eduState extends State<dialogue_edu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SimpleDialog(
        title: const Text('Add Details'),
        children: <Widget>[
          SimpleDialogOption(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PG_Screen()));
            },
            child: const Text('PG'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UG_Screen()));
            },
            child: const Text('UG'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Inter_Screen()));
            },
            child: const Text('Intermediate'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Tenth_Screen()));
            },
            child: const Text('10th standard'),
          ),
        ],
      ),
    );
  }
}
