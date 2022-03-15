import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget edu_details(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Educational details'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        )),
    body: Container(
        child: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.add, size: 30)),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Card(
                elevation: 15,
                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
                elevation: 15,
                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
                elevation: 15,
                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
                elevation: 15,
                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
    )),
  );
}
