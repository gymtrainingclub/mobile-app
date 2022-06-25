// ignore_for_file: prefer_collection_literals

class ProfileGetResponse {
  String? status;
  int? code;
  String? message;
  DataProfileGetResponse? data;

  ProfileGetResponse({this.status, this.code, this.message, this.data});

  ProfileGetResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    data = json['data'] != null
        ? DataProfileGetResponse.fromJson(json['data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['code'] = code;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class DataProfileGetResponse {
  int? id;
  String? name;
  String? gender;
  String? handphone;
  String? city;
  String? email;
  int? status;
  String? photo;
  Member? member;
  String? verifiedAt;
  String? createdAt;
  String? updatedAt;

  DataProfileGetResponse(
      {this.id,
      this.name,
      this.gender,
      this.handphone,
      this.city,
      this.email,
      this.status,
      this.photo,
      this.member,
      this.verifiedAt,
      this.createdAt,
      this.updatedAt});

  DataProfileGetResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    gender = json['gender'];
    handphone = json['handphone'];
    city = json['city'];
    email = json['email'];
    status = json['status'];
    photo = json['photo'];
    member = json['member'] != null ? Member.fromJson(json['member']) : null;
    verifiedAt = json['verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['gender'] = gender;
    data['handphone'] = handphone;
    data['city'] = city;
    data['email'] = email;
    data['status'] = status;
    data['photo'] = photo;
    if (member != null) {
      data['member'] = member!.toJson();
    }
    data['verified_at'] = verifiedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Member {
  int? id;
  String? name;
  int? limitedClass;
  int? limitedTime;
  String? description;

  Member(
      {this.id,
      this.name,
      this.limitedClass,
      this.limitedTime,
      this.description});

  Member.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    limitedClass = json['limited_class'];
    limitedTime = json['limited_time'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['limited_class'] = limitedClass;
    data['limited_time'] = limitedTime;
    data['description'] = description;
    return data;
  }
}

class ProfileUpdateRequest {
  String? name;
  String? gender;
  String? handphone;
  String? city;
  String? email;
  String? photo;

  ProfileUpdateRequest(
      {this.name,
      this.gender,
      this.handphone,
      this.city,
      this.email,
      this.photo});

  ProfileUpdateRequest.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    gender = json['gender'];
    handphone = json['handphone'];
    city = json['city'];
    email = json['email'];
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['gender'] = gender;
    data['handphone'] = handphone;
    data['city'] = city;
    data['email'] = email;
    data['photo'] = photo;
    return data;
  }
}

class ProfileUpdateResponse {
  String? status;
  int? code;
  String? message;
  DataProfileGetResponse? data;

  ProfileUpdateResponse({this.status, this.code, this.message, this.data});

  ProfileUpdateResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    data = json['data'] != null
        ? DataProfileGetResponse.fromJson(json['data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = status;
    data['code'] = code;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data1 {
  int? id;
  String? name;
  String? gender;
  String? handphone;
  String? city;
  String? email;
  int? status;
  String? photo;
  Member? member;
  String? verifiedAt;
  String? createdAt;
  String? updatedAt;

  Data1(
      {this.id,
      this.name,
      this.gender,
      this.handphone,
      this.city,
      this.email,
      this.status,
      this.photo,
      this.member,
      this.verifiedAt,
      this.createdAt,
      this.updatedAt});

  Data1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    gender = json['gender'];
    handphone = json['handphone'];
    city = json['city'];
    email = json['email'];
    status = json['status'];
    photo = json['photo'];
    member = json['member'] != null ? Member.fromJson(json['member']) : null;
    verifiedAt = json['verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['gender'] = gender;
    data['handphone'] = handphone;
    data['city'] = city;
    data['email'] = email;
    data['status'] = status;
    data['photo'] = photo;
    if (member != null) {
      data['member'] = member!.toJson();
    }
    data['verified_at'] = verifiedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Member1 {
  int? id;
  String? name;
  int? limitedClass;
  int? limitedTime;
  String? description;

  Member1(
      {this.id,
      this.name,
      this.limitedClass,
      this.limitedTime,
      this.description});

  Member1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    limitedClass = json['limited_class'];
    limitedTime = json['limited_time'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['limited_class'] = limitedClass;
    data['limited_time'] = limitedTime;
    data['description'] = description;
    return data;
  }
}

class ProfileChangePasswordRequest {
  String? oldPassword;
  String? newPassword;
  String? confirmPassword;

  ProfileChangePasswordRequest(
      {this.oldPassword, this.newPassword, this.confirmPassword});

  ProfileChangePasswordRequest.fromJson(Map<String, dynamic> json) {
    oldPassword = json['old_password'];
    newPassword = json['new_password'];
    confirmPassword = json['confirm_password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['old_password'] = oldPassword;
    data['new_password'] = newPassword;
    data['confirm_password'] = confirmPassword;
    return data;
  }
}

class ProfileChangePasswordResponse {
  String? status;
  int? code;
  String? message;
  DataProfileGetResponse? data;

  ProfileChangePasswordResponse(
      {this.status, this.code, this.message, this.data});

  ProfileChangePasswordResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    data = json['data'] != null
        ? DataProfileGetResponse.fromJson(json['data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = status;
    data['code'] = code;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data2 {
  String? name;
  String? email;

  Data2({this.name, this.email});

  Data2.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['email'] = email;
    return data;
  }
}
