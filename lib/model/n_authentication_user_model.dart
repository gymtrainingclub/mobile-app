class PostLoginUserRequest {
  String? email;
  String? password;

  PostLoginUserRequest({this.email, this.password});

  PostLoginUserRequest.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}

class PostLoginUserResponse {
  int? code;
  DataPostLoginUserResponse? data;
  String? message;
  String? status;

  PostLoginUserResponse({this.code, this.data, this.message, this.status});

  PostLoginUserResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPostLoginUserResponse.fromJson(json['data']) : null;
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}

class DataPostLoginUserResponse {
  String? token;
  UserDataPostLoginUserResponse? user;

  DataPostLoginUserResponse({this.token, this.user});

  DataPostLoginUserResponse.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    user = json['user'] != null ? UserDataPostLoginUserResponse.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}

class UserDataPostLoginUserResponse {
  int? weight;
  String? address;
  String? birthOfDate;
  String? city;
  String? createdAt;
  String? email;
  String? gender;
  String? handphone;
  int? height;
  String? name;
  String? nationality;
  String? photo;
  String? province;
  bool? status;
  bool? statusMembership;
  String? updatedAt;
  String? verifiedAt;

  UserDataPostLoginUserResponse(
      {this.weight,
      this.address,
      this.birthOfDate,
      this.city,
      this.createdAt,
      this.email,
      this.gender,
      this.handphone,
      this.height,
      this.name,
      this.nationality,
      this.photo,
      this.province,
      this.status,
      this.statusMembership,
      this.updatedAt,
      this.verifiedAt});

  UserDataPostLoginUserResponse.fromJson(Map<String, dynamic> json) {
    weight = json['Weight'];
    address = json['address'];
    birthOfDate = json['birth_of_date'];
    city = json['city'];
    createdAt = json['created_at'];
    email = json['email'];
    gender = json['gender'];
    handphone = json['handphone'];
    height = json['height'];
    name = json['name'];
    nationality = json['nationality'];
    photo = json['photo'];
    province = json['province'];
    status = json['status'];
    statusMembership = json['status_membership'];
    updatedAt = json['updated_at'];
    verifiedAt = json['verified_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Weight'] = weight;
    data['address'] = address;
    data['birth_of_date'] = birthOfDate;
    data['city'] = city;
    data['created_at'] = createdAt;
    data['email'] = email;
    data['gender'] = gender;
    data['handphone'] = handphone;
    data['height'] = height;
    data['name'] = name;
    data['nationality'] = nationality;
    data['photo'] = photo;
    data['province'] = province;
    data['status'] = status;
    data['status_membership'] = statusMembership;
    data['updated_at'] = updatedAt;
    data['verified_at'] = verifiedAt;
    return data;
  }
}

class PostRegisterUserRequest {
  String? city;
  String? email;
  String? gender;
  String? handphone;
  String? name;
  String? password;

  PostRegisterUserRequest(
      {this.city,
      this.email,
      this.gender,
      this.handphone,
      this.name,
      this.password});

  PostRegisterUserRequest.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    email = json['email'];
    gender = json['gender'];
    handphone = json['handphone'];
    name = json['name'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['city'] = city;
    data['email'] = email;
    data['gender'] = gender;
    data['handphone'] = handphone;
    data['name'] = name;
    data['password'] = password;
    return data;
  }
}

class PostForgotPasswordUserRequest {
  String? email;

  PostForgotPasswordUserRequest({this.email});

  PostForgotPasswordUserRequest.fromJson(Map<String, dynamic> json) {
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    return data;
  }
}

class PostForgotPasswordUserResponse {
  int? code;
  DataPostForgotPasswordUserResponse? data;
  String? message;
  String? status;

  PostForgotPasswordUserResponse(
      {this.code, this.data, this.message, this.status});

  PostForgotPasswordUserResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPostForgotPasswordUserResponse.fromJson(json['data']) : null;
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}

class DataPostForgotPasswordUserResponse {
  String? email;
  String? name;

  DataPostForgotPasswordUserResponse({this.email, this.name});

  DataPostForgotPasswordUserResponse.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['name'] = name;
    return data;
  }
}

class GetUserProfileResponse {
  int? code;
  DataGetUserProfileResponse? data;
  String? message;
  String? status;

  GetUserProfileResponse({this.code, this.data, this.message, this.status});

  GetUserProfileResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataGetUserProfileResponse.fromJson(json['data']) : null;
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}

class DataGetUserProfileResponse {
  int? weight;
  bool? active;
  bool? activeMembership;
  String? address;
  String? birthOfDate;
  String? city;
  String? createdAt;
  String? email;
  String? gender;
  String? handphone;
  int? height;
  int? id;
  MembershipDataGetUserProfileResponse? membership;
  String? name;
  String? nationality;
  String? photo;
  String? province;
  String? updatedAt;
  String? verifiedAt;

  DataGetUserProfileResponse(
      {this.weight,
      this.active,
      this.activeMembership,
      this.address,
      this.birthOfDate,
      this.city,
      this.createdAt,
      this.email,
      this.gender,
      this.handphone,
      this.height,
      this.id,
      this.membership,
      this.name,
      this.nationality,
      this.photo,
      this.province,
      this.updatedAt,
      this.verifiedAt});

  DataGetUserProfileResponse.fromJson(Map<String, dynamic> json) {
    weight = json['Weight'];
    active = json['active'];
    activeMembership = json['active_membership'];
    address = json['address'];
    birthOfDate = json['birth_of_date'];
    city = json['city'];
    createdAt = json['created_at'];
    email = json['email'];
    gender = json['gender'];
    handphone = json['handphone'];
    height = json['height'];
    id = json['id'];
    membership = json['membership'] != null
        ? MembershipDataGetUserProfileResponse.fromJson(json['membership'])
        : null;
    name = json['name'];
    nationality = json['nationality'];
    photo = json['photo'];
    province = json['province'];
    updatedAt = json['updated_at'];
    verifiedAt = json['verified_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Weight'] = weight;
    data['active'] = active;
    data['active_membership'] = activeMembership;
    data['address'] = address;
    data['birth_of_date'] = birthOfDate;
    data['city'] = city;
    data['created_at'] = createdAt;
    data['email'] = email;
    data['gender'] = gender;
    data['handphone'] = handphone;
    data['height'] = height;
    data['id'] = id;
    if (membership != null) {
      data['membership'] = membership!.toJson();
    }
    data['name'] = name;
    data['nationality'] = nationality;
    data['photo'] = photo;
    data['province'] = province;
    data['updated_at'] = updatedAt;
    data['verified_at'] = verifiedAt;
    return data;
  }
}

class MembershipDataGetUserProfileResponse {
  String? description;
  String? details;
  int? id;
  String? image;
  int? limitedClass;
  int? limitedContent;
  int? limitedTime;
  String? name;

  MembershipDataGetUserProfileResponse(
      {this.description,
      this.details,
      this.id,
      this.image,
      this.limitedClass,
      this.limitedContent,
      this.limitedTime,
      this.name});

  MembershipDataGetUserProfileResponse.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    details = json['details'];
    id = json['id'];
    image = json['image'];
    limitedClass = json['limited_class'];
    limitedContent = json['limited_content'];
    limitedTime = json['limited_time'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    data['details'] = details;
    data['id'] = id;
    data['image'] = image;
    data['limited_class'] = limitedClass;
    data['limited_content'] = limitedContent;
    data['limited_time'] = limitedTime;
    data['name'] = name;
    return data;
  }
}

class PutUpdateProfileRequest {
  int? weight;
  String? address;
  String? birthOfDate;
  String? city;
  String? email;
  String? gender;
  String? handphone;
  int? height;
  String? name;
  String? nationality;
  String? province;

  PutUpdateProfileRequest(
      {this.weight,
      this.address,
      this.birthOfDate,
      this.city,
      this.email,
      this.gender,
      this.handphone,
      this.height,
      this.name,
      this.nationality,
      this.province});

  PutUpdateProfileRequest.fromJson(Map<String, dynamic> json) {
    weight = json['Weight'];
    address = json['address'];
    birthOfDate = json['birth_of_date'];
    city = json['city'];
    email = json['email'];
    gender = json['gender'];
    handphone = json['handphone'];
    height = json['height'];
    name = json['name'];
    nationality = json['nationality'];
    province = json['province'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Weight'] = weight;
    data['address'] = address;
    data['birth_of_date'] = birthOfDate;
    data['city'] = city;
    data['email'] = email;
    data['gender'] = gender;
    data['handphone'] = handphone;
    data['height'] = height;
    data['name'] = name;
    data['nationality'] = nationality;
    data['province'] = province;
    return data;
  }
}

class PutUpdateProfileResponse {
  int? code;
  DataPutUpdateProfileResponse? data;
  String? message;
  String? status;

  PutUpdateProfileResponse({this.code, this.data, this.message, this.status});

  PutUpdateProfileResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPutUpdateProfileResponse.fromJson(json['data']) : null;
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}

class DataPutUpdateProfileResponse {
  int? weight;
  bool? active;
  bool? activeMembership;
  String? address;
  String? birthOfDate;
  String? city;
  String? createdAt;
  String? email;
  String? gender;
  String? handphone;
  int? height;
  int? id;
  MembershipDataPutUpdateProfileResponse? membership;
  String? name;
  String? nationality;
  String? photo;
  String? province;
  String? updatedAt;
  String? verifiedAt;

  DataPutUpdateProfileResponse(
      {this.weight,
      this.active,
      this.activeMembership,
      this.address,
      this.birthOfDate,
      this.city,
      this.createdAt,
      this.email,
      this.gender,
      this.handphone,
      this.height,
      this.id,
      this.membership,
      this.name,
      this.nationality,
      this.photo,
      this.province,
      this.updatedAt,
      this.verifiedAt});

  DataPutUpdateProfileResponse.fromJson(Map<String, dynamic> json) {
    weight = json['Weight'];
    active = json['active'];
    activeMembership = json['active_membership'];
    address = json['address'];
    birthOfDate = json['birth_of_date'];
    city = json['city'];
    createdAt = json['created_at'];
    email = json['email'];
    gender = json['gender'];
    handphone = json['handphone'];
    height = json['height'];
    id = json['id'];
    membership = json['membership'] != null
        ? MembershipDataPutUpdateProfileResponse.fromJson(json['membership'])
        : null;
    name = json['name'];
    nationality = json['nationality'];
    photo = json['photo'];
    province = json['province'];
    updatedAt = json['updated_at'];
    verifiedAt = json['verified_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Weight'] = weight;
    data['active'] = active;
    data['active_membership'] = activeMembership;
    data['address'] = address;
    data['birth_of_date'] = birthOfDate;
    data['city'] = city;
    data['created_at'] = createdAt;
    data['email'] = email;
    data['gender'] = gender;
    data['handphone'] = handphone;
    data['height'] = height;
    data['id'] = id;
    if (membership != null) {
      data['membership'] = membership!.toJson();
    }
    data['name'] = name;
    data['nationality'] = nationality;
    data['photo'] = photo;
    data['province'] = province;
    data['updated_at'] = updatedAt;
    data['verified_at'] = verifiedAt;
    return data;
  }
}

class MembershipDataPutUpdateProfileResponse {
  String? description;
  String? details;
  int? id;
  String? image;
  int? limitedClass;
  int? limitedContent;
  int? limitedTime;
  String? name;

  MembershipDataPutUpdateProfileResponse(
      {this.description,
      this.details,
      this.id,
      this.image,
      this.limitedClass,
      this.limitedContent,
      this.limitedTime,
      this.name});

  MembershipDataPutUpdateProfileResponse.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    details = json['details'];
    id = json['id'];
    image = json['image'];
    limitedClass = json['limited_class'];
    limitedContent = json['limited_content'];
    limitedTime = json['limited_time'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    data['details'] = details;
    data['id'] = id;
    data['image'] = image;
    data['limited_class'] = limitedClass;
    data['limited_content'] = limitedContent;
    data['limited_time'] = limitedTime;
    data['name'] = name;
    return data;
  }
}

class PutChangePasswordRequest {
  String? confirmPassword;
  String? newPassword;

  PutChangePasswordRequest({this.confirmPassword, this.newPassword});

  PutChangePasswordRequest.fromJson(Map<String, dynamic> json) {
    confirmPassword = json['confirm_password'];
    newPassword = json['new_password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['confirm_password'] = confirmPassword;
    data['new_password'] = newPassword;
    return data;
  }
}

class PutChangePasswordResponse {
  int? code;
  DataPutChangePasswordResponse? data;
  String? message;
  String? status;

  PutChangePasswordResponse({this.code, this.data, this.message, this.status});

  PutChangePasswordResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPutChangePasswordResponse.fromJson(json['data']) : null;
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}

class DataPutChangePasswordResponse {
  String? email;
  String? name;

  DataPutChangePasswordResponse({this.email, this.name});

  DataPutChangePasswordResponse.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['name'] = name;
    return data;
  }
}

class PostResetPasswordUserRequest {
  String? confirmPassword;
  String? newPassword;

  PostResetPasswordUserRequest({this.confirmPassword, this.newPassword});

  PostResetPasswordUserRequest.fromJson(Map<String, dynamic> json) {
    confirmPassword = json['confirm_password'];
    newPassword = json['new_password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['confirm_password'] = confirmPassword;
    data['new_password'] = newPassword;
    return data;
  }
}

class PostResetPasswordUserResponse {
  int? code;
  DataPostResetPasswordUserResponse? data;
  String? message;
  String? status;

  PostResetPasswordUserResponse(
      {this.code, this.data, this.message, this.status});

  PostResetPasswordUserResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPostResetPasswordUserResponse.fromJson(json['data']) : null;
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}

class DataPostResetPasswordUserResponse {
  String? email;
  String? name;

  DataPostResetPasswordUserResponse({this.email, this.name});

  DataPostResetPasswordUserResponse.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['name'] = name;
    return data;
  }
}

class GetVerifyUserResponse {
  int? code;
  DataGetVerifyUserResponse? data;
  String? message;
  String? status;

  GetVerifyUserResponse({this.code, this.data, this.message, this.status});

  GetVerifyUserResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataGetVerifyUserResponse.fromJson(json['data']) : null;
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}

class DataGetVerifyUserResponse {
  String? email;
  String? name;
  String? verifiedAt;

  DataGetVerifyUserResponse({this.email, this.name, this.verifiedAt});

  DataGetVerifyUserResponse.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    name = json['name'];
    verifiedAt = json['verified_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['name'] = name;
    data['verified_at'] = verifiedAt;
    return data;
  }
}

