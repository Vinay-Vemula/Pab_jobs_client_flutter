// To parse this JSON data, do
//
//     final jobpost = jobpostFromJson(jsonString);

import 'dart:convert';

JobPost jobpostFromJson(String str) => JobPost.fromJson(json.decode(str));

String jobpostToJson(JobPost data) => json.encode(data.toJson());

class JobPost {
  JobPost({
    required this.id,
    required this.userId,
    required this.title,
    required this.description,
    required this.experience,
    required this.maxPositions,
    required this.activeApplications,
    required this.acceptedCandidates,
    required this.dateOfPosting,
    required this.deadline,
    required this.skillsets,
    required this.cities,
    required this.jobType,
    required this.country,
    required this.education,
    required this.salary,
    required this.rating,
    required this.v,
    required this.recruiter,
  });

  String id;
  String userId;
  String title;
  String description;
  String experience;
  int maxPositions;
  int activeApplications;
  int acceptedCandidates;
  DateTime dateOfPosting;
  DateTime deadline;
  List<String> skillsets;
  List<String> cities;
  String jobType;
  String country;
  String education;
  int salary;
  int rating;
  int v;
  Recruiter recruiter;

  factory JobPost.fromJson(Map<String, dynamic> json) => JobPost(
        id: json["_id"],
        userId: json["userId"],
        title: json["title"],
        description: json["description"],
        experience: json["experience"],
        maxPositions: json["maxPositions"],
        activeApplications: json["activeApplications"],
        acceptedCandidates: json["acceptedCandidates"],
        dateOfPosting: DateTime.parse(json["dateOfPosting"]),
        deadline: DateTime.parse(json["deadline"]),
        skillsets: List<String>.from(json["skillsets"].map((x) => x)),
        cities: List<String>.from(json["cities"].map((x) => x)),
        jobType: json["jobType"],
        country: json["country"],
        education: json["education"],
        salary: json["salary"],
        rating: json["rating"],
        v: json["__v"],
        recruiter: Recruiter.fromJson(json["recruiter"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "userId": userId,
        "title": title,
        "description": description,
        "experience": experience,
        "maxPositions": maxPositions,
        "activeApplications": activeApplications,
        "acceptedCandidates": acceptedCandidates,
        "dateOfPosting": dateOfPosting.toIso8601String(),
        "deadline": deadline.toIso8601String(),
        "skillsets": List<String>.from(skillsets.map((x) => x)),
        "cities": List<String>.from(cities.map((x) => x)),
        "jobType": jobType,
        "country": country,
        "education": education,
        "salary": salary,
        "rating": rating,
        "__v": v,
        "recruiter": recruiter.toJson(),
      };
}

class Recruiter {
  Recruiter({
    required this.id,
    required this.userId,
    required this.companyname,
    required this.websitelink,
    this.foundedDate,
    required this.organizationType,
    required this.country,
    required this.contactNumber,
    required this.description,
    required this.email,
    required this.state,
    required this.city,
    required this.address,
    this.pincode,
    required this.facebook,
    required this.twitter,
    required this.google,
    required this.linkedin,
    required this.v,
  });

  String id;
  String userId;
  String companyname;
  String websitelink;
  dynamic foundedDate;
  String organizationType;
  String country;
  int contactNumber;
  String description;
  String email;
  String state;
  String city;
  String address;
  dynamic pincode;
  String facebook;
  String twitter;
  String google;
  String linkedin;
  int v;

  factory Recruiter.fromJson(Map<String, dynamic> json) => Recruiter(
        id: json["_id"],
        userId: json["userId"],
        companyname: json["companyname"],
        websitelink: json["websitelink"],
        foundedDate: json["foundedDate"],
        organizationType: json["organizationType"],
        country: json["country"],
        contactNumber: json["contactNumber"],
        description: json["description"],
        email: json["email"],
        state: json["state"],
        city: json["city"],
        address: json["address"],
        pincode: json["pincode"],
        facebook: json["facebook"],
        twitter: json["twitter"],
        google: json["google"],
        linkedin: json["linkedin"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "userId": userId,
        "companyname": companyname,
        "websitelink": websitelink,
        "foundedDate": foundedDate,
        "organizationType": organizationType,
        "country": country,
        "contactNumber": contactNumber,
        "description": description,
        "email": email,
        "state": state,
        "city": city,
        "address": address,
        "pincode": pincode,
        "facebook": facebook,
        "twitter": twitter,
        "google": google,
        "linkedin": linkedin,
        "__v": v,
      };
}
