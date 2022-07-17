class GetAllUsersRoleAdministratorRequest {
  String? query;
  String? start;
  String? end;

  GetAllUsersRoleAdministratorRequest({this.query, this.start, this.end});

  GetAllUsersRoleAdministratorRequest.fromJson(Map<String, dynamic> json) {
    query = json['query'];
    start = json['start'];
    end = json['end'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['query'] = query;
    data['start'] = start;
    data['end'] = end;
    return data;
  }
}

class GetAllUsersRoleAdministratorResponse {
  int? code;
  List<DataGetAllUsersRoleAdministratorResponse>? data;
  String? message;
  String? status;

  GetAllUsersRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  GetAllUsersRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['data'] != null) {
      data = <DataGetAllUsersRoleAdministratorResponse>[];
      json['data'].forEach((v) {
        data!.add(DataGetAllUsersRoleAdministratorResponse.fromJson(v));
      });
    }
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}

class DataGetAllUsersRoleAdministratorResponse {
  String? address;
  String? birthOfDate;
  String? city;
  String? createdAt;
  String? email;
  String? gender;
  String? handphone;
  int? height;
  int? id;
  MembershipDataGetAllUsersRoleAdministratorResponse? membership;
  String? name;
  String? nationality;
  String? photo;
  String? province;
  bool? status;
  bool? statusMembership;
  String? updatedAt;
  String? verifiedAt;
  int? weight;

  DataGetAllUsersRoleAdministratorResponse(
      {this.address,
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
      this.status,
      this.statusMembership,
      this.updatedAt,
      this.verifiedAt,
      this.weight});

  DataGetAllUsersRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
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
        ? MembershipDataGetAllUsersRoleAdministratorResponse.fromJson(json['membership'])
        : null;
    name = json['name'];
    nationality = json['nationality'];
    photo = json['photo'];
    province = json['province'];
    status = json['status'];
    statusMembership = json['status_membership'];
    updatedAt = json['updated_at'];
    verifiedAt = json['verified_at'];
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
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
    data['status'] = status;
    data['status_membership'] = statusMembership;
    data['updated_at'] = updatedAt;
    data['verified_at'] = verifiedAt;
    data['weight'] = weight;
    return data;
  }
}

class MembershipDataGetAllUsersRoleAdministratorResponse {
  String? description;
  String? details;
  int? id;
  String? image;
  int? limitedClass;
  int? limitedContent;
  int? limitedTime;
  String? name;

  MembershipDataGetAllUsersRoleAdministratorResponse(
      {this.description,
      this.details,
      this.id,
      this.image,
      this.limitedClass,
      this.limitedContent,
      this.limitedTime,
      this.name});

  MembershipDataGetAllUsersRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
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

class GetUserByIDRoleAdministratorResponse {
  int? code;
  DataGetUserByIDRoleAdministratorResponse? data;
  String? message;
  String? status;

  GetUserByIDRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  GetUserByIDRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataGetUserByIDRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataGetUserByIDRoleAdministratorResponse {
  String? address;
  String? birthOfDate;
  String? city;
  String? createdAt;
  String? email;
  String? gender;
  String? handphone;
  int? height;
  int? id;
  MembershipDataGetUserByIDRoleAdministratorResponse? membership;
  String? name;
  String? nationality;
  String? photo;
  String? province;
  bool? status;
  bool? statusMembership;
  String? updatedAt;
  String? verifiedAt;
  int? weight;

  DataGetUserByIDRoleAdministratorResponse(
      {this.address,
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
      this.status,
      this.statusMembership,
      this.updatedAt,
      this.verifiedAt,
      this.weight});

  DataGetUserByIDRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
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
        ? MembershipDataGetUserByIDRoleAdministratorResponse.fromJson(json['membership'])
        : null;
    name = json['name'];
    nationality = json['nationality'];
    photo = json['photo'];
    province = json['province'];
    status = json['status'];
    statusMembership = json['status_membership'];
    updatedAt = json['updated_at'];
    verifiedAt = json['verified_at'];
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
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
    data['status'] = status;
    data['status_membership'] = statusMembership;
    data['updated_at'] = updatedAt;
    data['verified_at'] = verifiedAt;
    data['weight'] = weight;
    return data;
  }
}

class MembershipDataGetUserByIDRoleAdministratorResponse {
  String? description;
  String? details;
  int? id;
  String? image;
  int? limitedClass;
  int? limitedContent;
  int? limitedTime;
  String? name;

  MembershipDataGetUserByIDRoleAdministratorResponse(
      {this.description,
      this.details,
      this.id,
      this.image,
      this.limitedClass,
      this.limitedContent,
      this.limitedTime,
      this.name});

  MembershipDataGetUserByIDRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
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

class PutUpdateUserRoleAdministratorRequest {
  int? weight;
  String? address;
  String? birthOfDate;
  String? city;
  String? email;
  String? gender;
  String? handphone;
  int? height;
  bool? isActive;
  String? name;
  String? nationality;
  String? province;
  bool? statusMembership;

  PutUpdateUserRoleAdministratorRequest(
      {this.weight,
      this.address,
      this.birthOfDate,
      this.city,
      this.email,
      this.gender,
      this.handphone,
      this.height,
      this.isActive,
      this.name,
      this.nationality,
      this.province,
      this.statusMembership});

  PutUpdateUserRoleAdministratorRequest.fromJson(Map<String, dynamic> json) {
    weight = json['Weight'];
    address = json['address'];
    birthOfDate = json['birth_of_date'];
    city = json['city'];
    email = json['email'];
    gender = json['gender'];
    handphone = json['handphone'];
    height = json['height'];
    isActive = json['is_active'];
    name = json['name'];
    nationality = json['nationality'];
    province = json['province'];
    statusMembership = json['status_membership'];
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
    data['is_active'] = isActive;
    data['name'] = name;
    data['nationality'] = nationality;
    data['province'] = province;
    data['status_membership'] = statusMembership;
    return data;
  }
}

class PutUpdateUserRoleAdministratorResponse {
  int? code;
  DataPutUpdateUserRoleAdministratorResponse? data;
  String? message;
  String? status;

  PutUpdateUserRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  PutUpdateUserRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPutUpdateUserRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataPutUpdateUserRoleAdministratorResponse {
  String? address;
  String? birthOfDate;
  String? city;
  String? createdAt;
  String? email;
  String? gender;
  String? handphone;
  int? height;
  int? id;
  MembershipDataPutUpdateUserRoleAdministratorResponse? membership;
  String? name;
  String? nationality;
  String? photo;
  String? province;
  bool? status;
  bool? statusMembership;
  String? updatedAt;
  String? verifiedAt;
  int? weight;

  DataPutUpdateUserRoleAdministratorResponse(
      {this.address,
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
      this.status,
      this.statusMembership,
      this.updatedAt,
      this.verifiedAt,
      this.weight});

  DataPutUpdateUserRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
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
        ? MembershipDataPutUpdateUserRoleAdministratorResponse.fromJson(json['membership'])
        : null;
    name = json['name'];
    nationality = json['nationality'];
    photo = json['photo'];
    province = json['province'];
    status = json['status'];
    statusMembership = json['status_membership'];
    updatedAt = json['updated_at'];
    verifiedAt = json['verified_at'];
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
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
    data['status'] = status;
    data['status_membership'] = statusMembership;
    data['updated_at'] = updatedAt;
    data['verified_at'] = verifiedAt;
    data['weight'] = weight;
    return data;
  }
}

class MembershipDataPutUpdateUserRoleAdministratorResponse {
  String? description;
  String? details;
  int? id;
  String? image;
  int? limitedClass;
  int? limitedContent;
  int? limitedTime;
  String? name;

  MembershipDataPutUpdateUserRoleAdministratorResponse(
      {this.description,
      this.details,
      this.id,
      this.image,
      this.limitedClass,
      this.limitedContent,
      this.limitedTime,
      this.name});

  MembershipDataPutUpdateUserRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
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

class DeleteUserRoleAdministratorResponse {
  int? code;
  DataDeleteUserRoleAdministratorResponse? data;
  String? message;
  String? status;

  DeleteUserRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  DeleteUserRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataDeleteUserRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataDeleteUserRoleAdministratorResponse {
  String? address;
  String? birthOfDate;
  String? city;
  String? createdAt;
  String? email;
  String? gender;
  String? handphone;
  int? height;
  int? id;
  MembershipDataDeleteUserRoleAdministratorResponse? membership;
  String? name;
  String? nationality;
  String? photo;
  String? province;
  bool? status;
  bool? statusMembership;
  String? updatedAt;
  String? verifiedAt;
  int? weight;

  DataDeleteUserRoleAdministratorResponse(
      {this.address,
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
      this.status,
      this.statusMembership,
      this.updatedAt,
      this.verifiedAt,
      this.weight});

  DataDeleteUserRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
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
        ? MembershipDataDeleteUserRoleAdministratorResponse.fromJson(json['membership'])
        : null;
    name = json['name'];
    nationality = json['nationality'];
    photo = json['photo'];
    province = json['province'];
    status = json['status'];
    statusMembership = json['status_membership'];
    updatedAt = json['updated_at'];
    verifiedAt = json['verified_at'];
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
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
    data['status'] = status;
    data['status_membership'] = statusMembership;
    data['updated_at'] = updatedAt;
    data['verified_at'] = verifiedAt;
    data['weight'] = weight;
    return data;
  }
}

class MembershipDataDeleteUserRoleAdministratorResponse {
  String? description;
  String? details;
  int? id;
  String? image;
  int? limitedClass;
  int? limitedContent;
  int? limitedTime;
  String? name;

  MembershipDataDeleteUserRoleAdministratorResponse(
      {this.description,
      this.details,
      this.id,
      this.image,
      this.limitedClass,
      this.limitedContent,
      this.limitedTime,
      this.name});

  MembershipDataDeleteUserRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
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

class PutUpdatePasswordRoleAdministratorRequest {
  String? confirmPassword;
  String? newPassword;

  PutUpdatePasswordRoleAdministratorRequest(
      {this.confirmPassword, this.newPassword});

  PutUpdatePasswordRoleAdministratorRequest.fromJson(
      Map<String, dynamic> json) {
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

class PutUpdatePasswordRoleAdministratorResponse {
  int? code;
  DataPutUpdatePasswordRoleAdministratorResponse? data;
  String? message;
  String? status;

  PutUpdatePasswordRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  PutUpdatePasswordRoleAdministratorResponse.fromJson(
      Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPutUpdatePasswordRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataPutUpdatePasswordRoleAdministratorResponse {
  String? address;
  String? birthOfDate;
  String? city;
  String? createdAt;
  String? email;
  String? gender;
  String? handphone;
  int? height;
  int? id;
  MembershipDataPutUpdatePasswordRoleAdministratorResponse? membership;
  String? name;
  String? nationality;
  String? photo;
  String? province;
  bool? status;
  bool? statusMembership;
  String? updatedAt;
  String? verifiedAt;
  int? weight;

  DataPutUpdatePasswordRoleAdministratorResponse(
      {this.address,
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
      this.status,
      this.statusMembership,
      this.updatedAt,
      this.verifiedAt,
      this.weight});

  DataPutUpdatePasswordRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
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
        ? MembershipDataPutUpdatePasswordRoleAdministratorResponse.fromJson(json['membership'])
        : null;
    name = json['name'];
    nationality = json['nationality'];
    photo = json['photo'];
    province = json['province'];
    status = json['status'];
    statusMembership = json['status_membership'];
    updatedAt = json['updated_at'];
    verifiedAt = json['verified_at'];
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
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
    data['status'] = status;
    data['status_membership'] = statusMembership;
    data['updated_at'] = updatedAt;
    data['verified_at'] = verifiedAt;
    data['weight'] = weight;
    return data;
  }
}

class MembershipDataPutUpdatePasswordRoleAdministratorResponse {
  String? description;
  String? details;
  int? id;
  String? image;
  int? limitedClass;
  int? limitedContent;
  int? limitedTime;
  String? name;

  MembershipDataPutUpdatePasswordRoleAdministratorResponse(
      {this.description,
      this.details,
      this.id,
      this.image,
      this.limitedClass,
      this.limitedContent,
      this.limitedTime,
      this.name});

  MembershipDataPutUpdatePasswordRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
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
