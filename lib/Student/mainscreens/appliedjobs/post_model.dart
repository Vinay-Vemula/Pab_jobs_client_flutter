//import 'package:client/posts.dart';

class JobPost {
  // final int userId;
  //final int _id;
  final String jobType;
  final String description;
  final String title;
  final int salary;

  //final int duration;
  //final int maxApplicants;
  final int maxPositions;
  final String country;
  final int activeApplications;
  // final int acceptedCandidates;
  // final DateTime dateOfPosting;
  final List<String> skillsets;
  final String deadline;
  final String education;
  final int acceptedCandidates;
  final String experience;
  //final String companyName;

  JobPost(
      {required this.experience,
      // required this._id,
      //required this.duration,
      // required this.userId,
      required this.description,
      required this.title,
      required this.education,
      //required this.maxApplicants,
      required this.activeApplications,
      required this.jobType,
      required this.salary,
      required this.country,
      required this.maxPositions,
      // required this.acceptedCandidates,
      // required this.dateOfPosting,
      required this.skillsets,
      required this.deadline,
      required this.acceptedCandidates
      // //required this.companyName,
      });

  factory JobPost.fromJson(Map<String, dynamic> parsedJson) {
    var skillsetsFromJson = parsedJson['skillsets'];
    //print(streetsFromJson.runtimeType);
    //List<String> streetsList = new List<String>.from(streetsFromJson);
    //var skillsetslist = parsedJson['skillsetsFromJson'];
    return JobPost(
      //userId: json['userId'] as int,
      //duration: json['duration'] as int,
      description: parsedJson['description'] as String,
      title: parsedJson['title'] as String,
      education: parsedJson['education'] as String,
      skillsets: skillsetsFromJson.cast<String>(),
      // acceptedCandidates: json['acceptedCandidates'] as int,
      activeApplications: parsedJson['activeApplications'] as int,
      acceptedCandidates: parsedJson['acceptedCandidates'] as int,
      // dateOfPosting: json['dateOfPosting'] as DateTime,
      deadline: parsedJson['deadline'] as String,
      // maxApplicants: json['maxApplicants'] as int,
      maxPositions: parsedJson['maxPositions'] as int,
      salary: parsedJson['salary'] as int,
      country: parsedJson['country'] as String,
      jobType: parsedJson['jobType'] as String,
      // jobType: json['jobType'] as String,
      experience: parsedJson['experience'] as String,
      //acceptedCandidates: json['acceptedCandidates'] as bool,
      //companyName: json['companyName'] as String,
      //_id: json['_id'] as int,
    );
  }
}
