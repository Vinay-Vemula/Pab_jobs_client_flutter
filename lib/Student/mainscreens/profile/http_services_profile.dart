// import 'dart:convert';

// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// import 'package:http/http.dart' as http;
// import 'package:pab_jobs/Student/mainscreens/profile/model/profile.dart';

// class ProfileHttpService {
//   //ProfileHttpService(this.myJwt, this.payload);
//   // factory ProfileHttpService.fromBase64(String myJwt) => ProfileHttpService(
//   //     myJwt,
//   //     json.decode(
//   //         ascii.decode(base64.decode(base64.normalize(myJwt.split('.')[1])))));

//   // final String myJwt;
//   // final Map<String, dynamic> payload;

//   String profileUrl = "http://10.0.2.2:4446/api/user";
//   final storage = const FlutterSecureStorage();

//   Future<Object> fetchUser() async {
//     final myJwt = await storage.read(key: "token");
//     final type = await storage.read(key: 'type');
//     final res = await http.get(Uri.parse(profileUrl), headers: {
//       'Content-type': 'application/json',
//       'Accept': 'application/json',
//       'Authorization': 'Bearer $myJwt',
//       //'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2MjBjN2NlYWVkMjExYTJlNzRmNzhiYjQiLCJpYXQiOjE2NDU3OTI3OTh9.Pyp1lH3skmI3HoqiGcvL7LTCxJFzztI-7ZgY4CSD1a0'
//     });
//     print(res.body);

//     if (res.statusCode == 200) {
//       //   List<Profile> body = jsonDecode(res.body);

//       //   List<Profile> profile = body
//       //       .map(
//       //         (dynamic item) => Profile.fromJson(item),
//       //       )
//       //       .toList();
//       var profiledecode = jsonDecode(res.body);
//       var educationinfo = profiledecode['education'];
//       //print(educationinfo);

//       return Profile.fromJson(profiledecode);
//       // } else {
//       //   throw "Unable to retrieve Job Posts.";
//     }
//     return Null;
//   }
// }

import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:http/http.dart' as http;
import 'package:pab_jobs/Student/mainscreens/profile/model/profile.dart';

class ProfileHttpService {
  //ProfileHttpService(this.myJwt, this.payload);
  // factory ProfileHttpService.fromBase64(String myJwt) => ProfileHttpService(
  //     myJwt,
  //     json.decode(
  //         ascii.decode(base64.decode(base64.normalize(myJwt.split('.')[1])))));

  // final String myJwt;
  // final Map<String, dynamic> payload;

  final String profileUrl = "http://10.0.2.2:4446/api/user";
  final storage = const FlutterSecureStorage();

  Future<Profile> fetchUser() async {
    final myJwt = await storage.read(key: "token");
    final type = await storage.read(key: 'type');
    final res = await http.get(Uri.parse(profileUrl), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $myJwt',
      //'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2MjBjN2NlYWVkMjExYTJlNzRmNzhiYjQiLCJpYXQiOjE2NDU3OTI3OTh9.Pyp1lH3skmI3HoqiGcvL7LTCxJFzztI-7ZgY4CSD1a0'
    });
    var profiledecode = jsonDecode(res.body);
    print(res.body);
    print(profiledecode);

    if (res.statusCode == 200) {
      // List<Profile> body = jsonDecode(res.body);

      // List<Profile> profile = body
      //     .map(
      //       (dynamic item) => Profile.fromJson(item),
      //     )
      //     .toList();

      var educationinfo = profiledecode['education'];
      // print(educationinfo);

      return Profile.fromJson(json.decode(res.body));
    } else {
      throw "Unable to retrieve Job Posts.";
    }
  }
}
