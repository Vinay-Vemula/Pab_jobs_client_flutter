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
    _id = json['_id'].toString();
    userId = json['userId'].toString();
    name = json['name'].toString();
    email = json['email'].toString();
    experience = Experience.fromJson(json['experience']);
    currentlocation = List.castFrom<dynamic, String>(json['currentlocation']);
    resumeHeadline = json['resumeHeadline'].toString();
    profileSummary = json['profileSummary'].toString();
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
    dateofbirth = json['dateofbirth'].toString();
    address = json['address'].toString();
    gender = json['gender'].toString();
    pincode = json['pincode'];
    maritalStatus = json['maritalStatus'].toString();
    hometown = json['hometown'].toString();
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
    experience = json['experience'].toString();
    year = json['year'].toString();
    month = json['month'].toString();
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
    years = json['years'].toString();
    months = json['months'].toString();
    designation = List.castFrom<dynamic, String>(json['designation']);
    organization = List.castFrom<dynamic, String>(json['organization']);
    startYear = json['startYear'].toString();
    endYear = json['endYear'].toString();
    profileDescription = json['profileDescription'].toString();
    noticePeriod = json['noticePeriod'].toString();
    _id = json['_id'].toString();
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
    highestgraduation = json['highestgraduation'].toString();
    course = json['course'].toString();
    specialization = json['specialization'].toString();
    institute = json['institute'].toString();
    passedoutyear = json['passedoutyear'];
    courseType = json['courseType'].toString();
    marks = json['marks'];
    _id = json['_id'].toString();
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
