class Profile {
  Resume? resume;
  Personaldetails? personaldetails;
  String? sId;
  String? userId;
  String? name;
  String? email;
  String? experience;
  String? resumeHeadline;
  String? profileSummary;
  List<String>? skills;
  int? rating;
  String? profile;
  int? contactNumber;
  List<Employment>? employment;
  List<Education>? education;
  int? iV;
  String? profileImage;

  Profile(
      {this.resume,
      this.personaldetails,
      this.sId,
      this.userId,
      this.name,
      this.email,
      this.experience,
      this.resumeHeadline,
      this.profileSummary,
      this.skills,
      this.rating,
      this.profile,
      this.contactNumber,
      this.employment,
      this.education,
      this.iV,
      this.profileImage});

  Profile.fromJson(Map<String, dynamic> json) {
    resume =
        json['resume'] != null ? new Resume.fromJson(json['resume']) : null;
    personaldetails = json['personaldetails'] != null
        ? new Personaldetails.fromJson(json['personaldetails'])
        : null;
    sId = json['_id'];
    userId = json['userId'];
    name = json['name'];
    email = json['email'];
    experience = json['experience'];
    resumeHeadline = json['resumeHeadline'];
    profileSummary = json['profileSummary'];
    skills = json['skills'].cast<String>();
    rating = json['rating'];
    profile = json['profile'];
    contactNumber = json['contactNumber'];
    if (json['employment'] != null) {
      employment = <Employment>[];
      json['employment'].forEach((v) {
        employment!.add(new Employment.fromJson(v));
      });
    }
    if (json['education'] != null) {
      education = <Education>[];
      json['education'].forEach((v) {
        education!.add(new Education.fromJson(v));
      });
    }
    iV = json['__v'];
    profileImage = json['profileImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.resume != null) {
      data['resume'] = this.resume!.toJson();
    }
    if (this.personaldetails != null) {
      data['personaldetails'] = this.personaldetails!.toJson();
    }
    data['_id'] = this.sId;
    data['userId'] = this.userId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['experience'] = this.experience;
    data['resumeHeadline'] = this.resumeHeadline;
    data['profileSummary'] = this.profileSummary;
    data['skills'] = this.skills;
    data['rating'] = this.rating;
    data['profile'] = this.profile;
    data['contactNumber'] = this.contactNumber;
    if (this.employment != null) {
      data['employment'] = this.employment!.map((v) => v.toJson()).toList();
    }
    if (this.education != null) {
      data['education'] = this.education!.map((v) => v.toJson()).toList();
    }
    data['__v'] = this.iV;
    data['profileImage'] = this.profileImage;
    return data;
  }
}

class Resume {
  String? filename;
  String? url;

  Resume({this.filename, this.url});

  Resume.fromJson(Map<String, dynamic> json) {
    filename = json['filename'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['filename'] = this.filename;
    data['url'] = this.url;
    return data;
  }
}

class Personaldetails {
  Null? dateofbirth;
  String? address;
  String? gender;
  Null? pincode;
  String? maritalStatus;
  String? hometown;
  List<String>? languages;

  Personaldetails({
    this.dateofbirth,
    this.address,
    this.gender,
    this.pincode,
    this.maritalStatus,
    this.hometown,
    //this.languages
  });

  Personaldetails.fromJson(Map<String, dynamic> json) {
    dateofbirth = json['dateofbirth'];
    address = json['address'];
    gender = json['gender'];
    pincode = json['pincode'];
    maritalStatus = json['maritalStatus'];
    hometown = json['hometown'];
    // if (json['languages'] != null) {
    //   languages = <String>[];
    //   json['languages'].forEach((v) {
    //     languages!.add(new String.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dateofbirth'] = this.dateofbirth;
    data['address'] = this.address;
    data['gender'] = this.gender;
    data['pincode'] = this.pincode;
    data['maritalStatus'] = this.maritalStatus;
    data['hometown'] = this.hometown;
    //   if (this.languages != null) {
    //     data['languages'] = this.languages!.map((v) => v.to()).toList();
    //   }
    return data;
  }
}

class Employment {
  String? years;
  String? months;
  String? designation;
  String? organization;
  Null? startYear;
  Null? endYear;
  String? profileDescription;
  Null? noticePeriod;
  String? sId;

  Employment(
      {this.years,
      this.months,
      this.designation,
      this.organization,
      this.startYear,
      this.endYear,
      this.profileDescription,
      this.noticePeriod,
      this.sId});

  Employment.fromJson(Map<String, dynamic> json) {
    years = json['years'];
    months = json['months'];
    designation = json['designation'];
    organization = json['organization'];
    startYear = json['startYear'];
    endYear = json['endYear'];
    profileDescription = json['profileDescription'];
    noticePeriod = json['noticePeriod'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['years'] = this.years;
    data['months'] = this.months;
    data['designation'] = this.designation;
    data['organization'] = this.organization;
    data['startYear'] = this.startYear;
    data['endYear'] = this.endYear;
    data['profileDescription'] = this.profileDescription;
    data['noticePeriod'] = this.noticePeriod;
    data['_id'] = this.sId;
    return data;
  }
}

class Education {
  String? highestgraduation;
  String? course;
  String? specialization;
  String? institute;
  int? passedoutyear;
  String? courseType;
  int? marks;
  String? sId;

  Education(
      {this.highestgraduation,
      this.course,
      this.specialization,
      this.institute,
      this.passedoutyear,
      this.courseType,
      this.marks,
      this.sId});

  Education.fromJson(Map<String, dynamic> json) {
    highestgraduation = json['highestgraduation'];
    course = json['course'];
    specialization = json['specialization'];
    institute = json['institute'];
    passedoutyear = json['passedoutyear'];
    courseType = json['courseType'];
    marks = json['marks'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['highestgraduation'] = this.highestgraduation;
    data['course'] = this.course;
    data['specialization'] = this.specialization;
    data['institute'] = this.institute;
    data['passedoutyear'] = this.passedoutyear;
    data['courseType'] = this.courseType;
    data['marks'] = this.marks;
    data['_id'] = this.sId;
    return data;
  }
}
