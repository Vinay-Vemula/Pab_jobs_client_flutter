// import 'dart:async';
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:pab_jobs/Student/mainscreens/profile/http_services_profile.dart';
// import 'package:pab_jobs/Student/mainscreens/profile/model/profile.dart';

// //import 'package:prohiree_main/Student/mainscreens/profile/model/profile.dart';

// class FirstScreen extends StatefulWidget {
//   // final Profile profile;

//   // // ignore: use_key_in_widget_constructors
//   // const FirstScreen({required this.profile});

//   @override
//   _FirstScreenState createState() => _FirstScreenState();
// }

// class _FirstScreenState extends State<FirstScreen> {
//   ProfileHttpService profileHttpService = ProfileHttpService();
//   Future<Profile>? futureprofile;

//   @override
//   void initState() {
//     super.initState();
//     var futureprofile = profileHttpService.fetchUser();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: FutureBuilder<Profile>(
//           future: profileHttpService.fetchUser(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               // var index = int;
//               return Column(
//                 children: [
//                   Text('${snapshot.data!.email}'),
//                   (snapshot.data!.education.length == 0)
//                       ? Text("null")
//                       : Text(
//                           '${snapshot.data!.education[0].institute.toString()}'),
//                 ],
//               );
//             } else if (snapshot.hasError) {
//               return Text('${snapshot.error}');
//             }

//             // By default, show a loading spinner.
//             return const CircularProgressIndicator();
//           },
//         ),
//       ),
//     );
//   }
// }
