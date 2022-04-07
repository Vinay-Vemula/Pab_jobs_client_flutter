import 'dart:convert';

class Profile {
  final Resume? resume;
  final Personaldetails? personaldetails;
  final String? id;
  final String? userId;
  final String? name;
  final String? email;
  final Experience? experience;
  final List<String>? currentlocation;
  final String? resumeHeadline;
  final String? profileSummary;
  final List<String>? skills;
  final int? rating;
  final String? profile;
  final int? contactNumber;
  final List<Employment>? employment;
  final List<Education>? education;
  final int? v;
  final String? profileImage;

  Profile({
    this.resume,
    this.personaldetails,
    this.id,
    this.userId,
    this.name,
    this.email,
    this.experience,
    this.currentlocation,
    this.resumeHeadline,
    this.profileSummary,
    this.skills,
    this.rating,
    this.profile,
    this.contactNumber,
    this.employment,
    this.education,
    this.v,
    this.profileImage,
  });

  Profile.fromJson(Map<String, dynamic> json)
      // ignore: unnecessary_null_comparison
      : resume =
            (json['resume']) != null ? Resume.fromJson(json['resume']) : null,
        personaldetails =
            // ignore: unnecessary_null_comparison
            (json['personaldetails']) != null
                ? Personaldetails.fromJson(json['personaldetails'])
                : null,
        id = json['_id'] as String?,
        userId = json['userId'] as String?,
        name = json['name'] as String?,
        email = json['email'] as String?,
        // ignore: unnecessary_null_comparison
        experience = (json['experience']) != null
            ? Experience.fromJson(json['experience'])
            : null,
        currentlocation = (json['currentlocation'] as List?)
            ?.map((e) => e as String)
            .toList(),
        resumeHeadline = json['resumeHeadline'] as String?,
        profileSummary = json['profileSummary'] as String?,
        skills = (json['skills'] as List?)?.map((e) => e as String).toList(),
        rating = json['rating'] as int?,
        profile = json['profile'] as String?,
        contactNumber = json['contactNumber'] as int?,
        employment = (json['employment'] as List?)
            ?.map((e) => Employment.fromJson(e))
            .toList(),
        education = (json['education'] as List?)
            ?.map((e) => Education.fromJson(e))
            .toList(),
        v = json['__v'] as int?,
        profileImage = json['profileImage'] as String?;

  Map<String, dynamic> toJson() => {
        'resume': resume?.toJson(),
        'personaldetails': personaldetails?.toJson(),
        '_id': id,
        'userId': userId,
        'name': name,
        'email': email,
        'experience': experience?.toJson(),
        'currentlocation': currentlocation,
        'resumeHeadline': resumeHeadline,
        'profileSummary': profileSummary,
        'skills': skills,
        'rating': rating,
        'profile': profile,
        'contactNumber': contactNumber,
        'employment': employment?.map((e) => e.toJson()).toList(),
        'education': education?.map((e) => e.toJson()).toList(),
        '__v': v,
        'profileImage': profileImage
      };
}

class Resume {
  final String? filename;
  final String? url;

  Resume({
    this.filename,
    this.url,
  });

  Resume.fromJson(Map<String, dynamic> json)
      : filename = json['filename'] as String?,
        url = json['url'] as String?;

  Map<String, dynamic> toJson() => {'filename': filename, 'url': url};
}

class Personaldetails {
  final String? dateofbirth;
  final String? address;
  final String? gender;
  final int? pincode;
  final String? maritalStatus;
  final String? hometown;
  final List<String>? languages;

  Personaldetails({
    this.dateofbirth,
    this.address,
    this.gender,
    this.pincode,
    this.maritalStatus,
    this.hometown,
    this.languages,
  });

  Personaldetails.fromJson(Map<String, dynamic> json)
      : dateofbirth = json['dateofbirth'] as String?,
        address = json['address'] as String?,
        gender = json['gender'] as String?,
        pincode = json['pincode'] as int?,
        maritalStatus = json['maritalStatus'] as String?,
        hometown = json['hometown'] as String?,
        languages =
            (json['languages'] as List?)?.map((e) => e as String).toList();

  Map<String, dynamic> toJson() => {
        'dateofbirth': dateofbirth,
        'address': address,
        'gender': gender,
        'pincode': pincode,
        'maritalStatus': maritalStatus,
        'hometown': hometown,
        'languages': languages
      };
}

class Experience {
  final String? experience;
  final String? year;
  final String? month;

  Experience({
    this.experience,
    this.year,
    this.month,
  });

  Experience.fromJson(Map<String, dynamic> json)
      : experience = json['experience'] as String?,
        year = json['year'] as String?,
        month = json['month'] as String?;

  Map<String, dynamic> toJson() =>
      {'experience': experience, 'year': year, 'month': month};
}

class Employment {
  final String? years;
  final String? months;
  final List<String>? designation;
  final List<String>? organization;
  final String? startYear;
  final String? endYear;
  final String? profileDescription;
  final String? noticePeriod;
  final String? id;

  Employment({
    this.years,
    this.months,
    this.designation,
    this.organization,
    this.startYear,
    this.endYear,
    this.profileDescription,
    this.noticePeriod,
    this.id,
  });

  Employment.fromJson(Map<String, dynamic> json)
      : years = json['years'] as String?,
        months = json['months'] as String?,
        designation =
            (json['designation'] as List?)?.map((e) => e as String).toList(),
        organization =
            (json['organization'] as List?)?.map((e) => e as String).toList(),
        startYear = json['startYear'] as String?,
        endYear = json['endYear'] as String?,
        profileDescription = json['profileDescription'] as String?,
        noticePeriod = json['noticePeriod'] as String?,
        id = json['_id'] as String?;

  Map<String, dynamic> toJson() => {
        'years': years,
        'months': months,
        'designation': designation,
        'organization': organization,
        'startYear': startYear,
        'endYear': endYear,
        'profileDescription': profileDescription,
        'noticePeriod': noticePeriod,
        '_id': id
      };
}

class Education {
  final String? highestgraduation;
  final String? course;
  final String? specialization;
  final String? institute;
  final dynamic passedoutyear;
  final String? courseType;
  final dynamic marks;
  final String? id;

  Education({
    this.highestgraduation,
    this.course,
    this.specialization,
    this.institute,
    this.passedoutyear,
    this.courseType,
    this.marks,
    this.id,
  });

  Education.fromJson(Map<String, dynamic> json)
      : highestgraduation = json['highestgraduation'] as String?,
        course = json['course'] as String?,
        specialization = json['specialization'] as String?,
        institute = json['institute'] as String?,
        passedoutyear = json['passedoutyear'],
        courseType = json['courseType'] as String?,
        marks = json['marks'],
        id = json['_id'] as String?;

  Map<String, dynamic> toJson() => {
        'highestgraduation': highestgraduation,
        'course': course,
        'specialization': specialization,
        'institute': institute,
        'passedoutyear': passedoutyear,
        'courseType': courseType,
        'marks': marks,
        '_id': id
      };
}
