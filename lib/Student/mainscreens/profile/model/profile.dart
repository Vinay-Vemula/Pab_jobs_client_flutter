// class Profile {
//   Resume? resume;
//   Personaldetails? personaldetails;
//   String? sId;
//   String? userId;
//   String? name;
//   String? email;
//   String? experience;
//   String? resumeHeadline;
//   String? profileSummary;
//   List<String>? skills;
//   int? rating;
//   String? profile;
//   int? contactNumber;
//   List<Employment>? employment;
//   List<Education>? education;
//   int? iV;
//   String? profileImage;

//   Profile(
//       {this.resume,
//       this.personaldetails,
//       this.sId,
//       this.userId,
//       this.name,
//       this.email,
//       this.experience,
//       this.resumeHeadline,
//       this.profileSummary,
//       this.skills,
//       this.rating,
//       this.profile,
//       this.contactNumber,
//       this.employment,
//       this.education,
//       this.iV,
//       this.profileImage});

//   Profile.fromJson(Map<String, dynamic> json) {
//     resume =
//         json['resume'] != null ? new Resume.fromJson(json['resume']) : null;
//     personaldetails = json['personaldetails'] != null
//         ? new Personaldetails.fromJson(json['personaldetails'])
//         : null;
//     sId = json['_id'];
//     userId = json['userId'];
//     name = json['name'];
//     email = json['email'];
//     experience = json['experience'];
//     resumeHeadline = json['resumeHeadline'];
//     profileSummary = json['profileSummary'];
//     skills = json['skills'].cast<String>();
//     rating = json['rating'];
//     profile = json['profile'];
//     contactNumber = json['contactNumber'];
//     if (json['employment'] != null) {
//       employment = <Employment>[];
//       json['employment'].forEach((v) {
//         employment!.add(new Employment.fromJson(v));
//       });
//     }
//     if (json['education'] != null) {
//       education = <Education>[];
//       json['education'].forEach((v) {
//         education!.add(new Education.fromJson(v));
//       });
//     }
//     iV = json['__v'];
//     profileImage = json['profileImage'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.resume != null) {
//       data['resume'] = this.resume!.toJson();
//     }
//     if (this.personaldetails != null) {
//       data['personaldetails'] = this.personaldetails!.toJson();
//     }
//     data['_id'] = this.sId;
//     data['userId'] = this.userId;
//     data['name'] = this.name;
//     data['email'] = this.email;
//     data['experience'] = this.experience;
//     data['resumeHeadline'] = this.resumeHeadline;
//     data['profileSummary'] = this.profileSummary;
//     data['skills'] = this.skills;
//     data['rating'] = this.rating;
//     data['profile'] = this.profile;
//     data['contactNumber'] = this.contactNumber;
//     if (this.employment != null) {
//       data['employment'] = this.employment!.map((v) => v.toJson()).toList();
//     }
//     if (this.education != null) {
//       data['education'] = this.education!.map((v) => v.toJson()).toList();
//     }
//     data['__v'] = this.iV;
//     data['profileImage'] = this.profileImage;
//     return data;
//   }
// }

// class Resume {
//   String? filename;
//   String? url;

//   Resume({this.filename, this.url});

//   Resume.fromJson(Map<String, dynamic> json) {
//     filename = json['filename'];
//     url = json['url'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['filename'] = this.filename;
//     data['url'] = this.url;
//     return data;
//   }
// }

// class Personaldetails {
//   String? dateofbirth;
//   String? address;
//   String? gender;
//   String? pincode;
//   String? maritalStatus;
//   String? hometown;
//   List<String>? languages;

//   Personaldetails({
//     this.dateofbirth,
//     this.address,
//     this.gender,
//     this.pincode,
//     this.maritalStatus,
//     this.hometown,
//     //this.languages
//   });

//   Personaldetails.fromJson(Map<String, dynamic> json) {
//     dateofbirth = json['dateofbirth'];
//     address = json['address'];
//     gender = json['gender'];
//     pincode = json['pincode'];
//     maritalStatus = json['maritalStatus'];
//     hometown = json['hometown'];
//     // if (json['languages'] != null) {
//     //   languages = <String>[];
//     //   json['languages'].forEach((v) {
//     //     languages!.add(new String.fromJson(v));
//     //   });
//     // }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['dateofbirth'] = this.dateofbirth;
//     data['address'] = this.address;
//     data['gender'] = this.gender;
//     data['pincode'] = this.pincode;
//     data['maritalStatus'] = this.maritalStatus;
//     data['hometown'] = this.hometown;
//     //   if (this.languages != null) {
//     //     data['languages'] = this.languages!.map((v) => v.to()).toList();
//     //   }
//     return data;
//   }
// }

// class Employment {
//   String? years;
//   String? months;
//   String? designation;
//   String? organization;
//   String? startYear;
//   String? endYear;
//   String? profileDescription;
//   String? noticePeriod;
//   String? sId;

//   Employment(
//       {this.years,
//       this.months,
//       this.designation,
//       this.organization,
//       this.startYear,
//       this.endYear,
//       this.profileDescription,
//       this.noticePeriod,
//       this.sId});

//   Employment.fromJson(Map<String, dynamic> json) {
//     years = json['years'];
//     months = json['months'];
//     designation = json['designation'];
//     organization = json['organization'];
//     startYear = json['startYear'];
//     endYear = json['endYear'];
//     profileDescription = json['profileDescription'];
//     noticePeriod = json['noticePeriod'];
//     sId = json['_id'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['years'] = this.years;
//     data['months'] = this.months;
//     data['designation'] = this.designation;
//     data['organization'] = this.organization;
//     data['startYear'] = this.startYear;
//     data['endYear'] = this.endYear;
//     data['profileDescription'] = this.profileDescription;
//     data['noticePeriod'] = this.noticePeriod;
//     data['_id'] = this.sId;
//     return data;
//   }
// }

// class Education {
//   String? highestgraduation;
//   String? course;
//   String? specialization;
//   String? institute;
//   int? passedoutyear;
//   String? courseType;
//   int? marks;
//   String? sId;

//   Education(
//       {this.highestgraduation,
//       this.course,
//       this.specialization,
//       this.institute,
//       this.passedoutyear,
//       this.courseType,
//       this.marks,
//       this.sId});

//   Education.fromJson(Map<String, dynamic> json) {
//     highestgraduation = json['highestgraduation'];
//     course = json['course'];
//     specialization = json['specialization'];
//     institute = json['institute'];
//     passedoutyear = json['passedoutyear'];
//     courseType = json['courseType'];
//     marks = json['marks'];
//     sId = json['_id'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['highestgraduation'] = this.highestgraduation;
//     data['course'] = this.course;
//     data['specialization'] = this.specialization;
//     data['institute'] = this.institute;
//     data['passedoutyear'] = this.passedoutyear;
//     data['courseType'] = this.courseType;
//     data['marks'] = this.marks;
//     data['_id'] = this.sId;
//     return data;
//   }
// }
class Profile {
  Profile({
    required this.resume,
    required this.personaldetails,
    //required this._id,
    required this.userId,
    required this.name,
    required this.email,
    required this.experience,
    required this.currentlocation,
    required this.resumeHeadline,
    required this.profileSummary,
    required this.skills,
    required this.rating,
    required this.profile,
    required this.contactNumber,
    required this.employment,
    required this.education,
    //required this._V,
    required this.profileImage,
  });
  late final Resume resume;
  late final Personaldetails personaldetails;
  late final String _id;
  late final String userId;
  late final String name;
  late final String email;
  late final Experience experience;
  late final List<String> currentlocation;
  late final String resumeHeadline;
  late final String profileSummary;
  late final List<String> skills;
  late final int rating;
  late final String profile;
  late final int contactNumber;
  late final List<Employment> employment;
  late final List<Education> education;
  late final int _V;
  late final String profileImage;

  Profile.fromJson(Map<String, dynamic> json) {
    resume = Resume.fromJson(json['resume']);
    personaldetails = Personaldetails.fromJson(json['personaldetails']);
    _id = json['_id'];
    userId = json['userId'];
    name = json['name'];
    email = json['email'];
    experience = Experience.fromJson(json['experience']);
    currentlocation = List.castFrom<dynamic, String>(json['currentlocation']);
    resumeHeadline = json['resumeHeadline'];
    profileSummary = json['profileSummary'];
    skills = List.castFrom<dynamic, String>(json['skills']);
    rating = json['rating'];
    profile = json['profile'];
    contactNumber = json['contactNumber'];
    employment = List.from(json['employment'])
        .map((e) => Employment.fromJson(e))
        .toList();
    education =
        List.from(json['education']).map((e) => Education.fromJson(e)).toList();
    _V = json['__v'];
    profileImage = json['profileImage'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['resume'] = resume.toJson();
    _data['personaldetails'] = personaldetails.toJson();
    _data['_id'] = _id;
    _data['userId'] = userId;
    _data['name'] = name;
    _data['email'] = email;
    _data['experience'] = experience.toJson();
    _data['currentlocation'] = currentlocation;
    _data['resumeHeadline'] = resumeHeadline;
    _data['profileSummary'] = profileSummary;
    _data['skills'] = skills;
    _data['rating'] = rating;
    _data['profile'] = profile;
    _data['contactNumber'] = contactNumber;
    _data['employment'] = employment.map((e) => e.toJson()).toList();
    _data['education'] = education.map((e) => e.toJson()).toList();
    _data['__v'] = _V;
    _data['profileImage'] = profileImage;
    return _data;
  }
}

class Resume {
  Resume({
    required this.filename,
    required this.url,
  });
  late final String filename;
  late final String url;

  Resume.fromJson(Map<String, dynamic> json) {
    filename = json['filename'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['filename'] = filename;
    _data['url'] = url;
    return _data;
  }
}

class Personaldetails {
  Personaldetails({
    required this.dateofbirth,
    required this.address,
    required this.gender,
    required this.pincode,
    required this.maritalStatus,
    required this.hometown,
    required this.languages,
  });
  late final String dateofbirth;
  late final String address;
  late final String gender;
  late final int pincode;
  late final String maritalStatus;
  late final String hometown;
  late final List<String> languages;

  Personaldetails.fromJson(Map<String, dynamic> json) {
    dateofbirth = json['dateofbirth'];
    address = json['address'];
    gender = json['gender'];
    pincode = json['pincode'];
    maritalStatus = json['maritalStatus'];
    hometown = json['hometown'];
    languages = List.castFrom<dynamic, String>(json['languages']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['dateofbirth'] = dateofbirth;
    _data['address'] = address;
    _data['gender'] = gender;
    _data['pincode'] = pincode;
    _data['maritalStatus'] = maritalStatus;
    _data['hometown'] = hometown;
    _data['languages'] = languages;
    return _data;
  }
}

class Experience {
  Experience({
    required this.experience,
    required this.year,
    required this.month,
  });
  late final String experience;
  late final String year;
  late final String month;

  Experience.fromJson(Map<String, dynamic> json) {
    experience = json['experience'];
    year = json['year'];
    month = json['month'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['experience'] = experience;
    _data['year'] = year;
    _data['month'] = month;
    return _data;
  }
}

class Employment {
  Employment({
    required this.years,
    required this.months,
    required this.designation,
    required this.organization,
    required this.startYear,
    required this.endYear,
    required this.profileDescription,
    required this.noticePeriod,
    //required this._id,
  });
  late final String years;
  late final String months;
  late final List<String> designation;
  late final List<String> organization;
  late final String startYear;
  late final String endYear;
  late final String profileDescription;
  late final String noticePeriod;
  late final String _id;

  Employment.fromJson(Map<String, dynamic> json) {
    years = json['years'];
    months = json['months'];
    designation = List.castFrom<dynamic, String>(json['designation']);
    organization = List.castFrom<dynamic, String>(json['organization']);
    startYear = json['startYear'];
    endYear = json['endYear'];
    profileDescription = json['profileDescription'];
    noticePeriod = json['noticePeriod'];
    _id = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['years'] = years;
    _data['months'] = months;
    _data['designation'] = designation;
    _data['organization'] = organization;
    _data['startYear'] = startYear;
    _data['endYear'] = endYear;
    _data['profileDescription'] = profileDescription;
    _data['noticePeriod'] = noticePeriod;
    _data['_id'] = _id;
    return _data;
  }
}

class Education {
  Education({
    required this.highestgraduation,
    required this.course,
    required this.specialization,
    required this.institute,
    this.passedoutyear,
    required this.courseType,
    this.marks,
    //required this._id,
  });
  late final String highestgraduation;
  late final String course;
  late final String specialization;
  late final String institute;
  late final int? passedoutyear;
  late final String courseType;
  late final int? marks;
  late final String _id;

  Education.fromJson(Map<String, dynamic> json) {
    highestgraduation = json['highestgraduation'];
    course = json['course'];
    specialization = json['specialization'];
    institute = json['institute'];
    passedoutyear = json['passedoutyear'];
    courseType = json['courseType'];
    marks = json['marks'];
    _id = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['highestgraduation'] = highestgraduation;
    _data['course'] = course;
    _data['specialization'] = specialization;
    _data['institute'] = institute;
    _data['passedoutyear'] = passedoutyear;
    _data['courseType'] = courseType;
    _data['marks'] = marks;
    _data['_id'] = _id;
    return _data;
  }
}
