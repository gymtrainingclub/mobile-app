class PostLoginAdminRoleAdministratorRequest {
  String? email;
  String? password;

  PostLoginAdminRoleAdministratorRequest({this.email, this.password});

  PostLoginAdminRoleAdministratorRequest.fromJson(Map<String, dynamic> json) {
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

class PostLoginAdminRoleAdministratorResponse {
  int? code;
  DataPostLoginAdminRoleAdministratorResponse? data;
  String? message;
  String? status;

  PostLoginAdminRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  PostLoginAdminRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPostLoginAdminRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataPostLoginAdminRoleAdministratorResponse {
  AdminDataPostLoginAdminRoleAdministratorResponse? admin;
  String? token;

  DataPostLoginAdminRoleAdministratorResponse({this.admin, this.token});

  DataPostLoginAdminRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    admin = json['admin'] != null ? AdminDataPostLoginAdminRoleAdministratorResponse.fromJson(json['admin']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (admin != null) {
      data['admin'] = admin!.toJson();
    }
    data['token'] = token;
    return data;
  }
}

class AdminDataPostLoginAdminRoleAdministratorResponse {
  String? createdAt;
  String? email;
  String? name;
  String? photo;
  String? role;
  bool? status;
  String? updatedAt;
  String? username;
  String? verifiedAt;

  AdminDataPostLoginAdminRoleAdministratorResponse(
      {this.createdAt,
      this.email,
      this.name,
      this.photo,
      this.role,
      this.status,
      this.updatedAt,
      this.username,
      this.verifiedAt});

  AdminDataPostLoginAdminRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    email = json['email'];
    name = json['name'];
    photo = json['photo'];
    role = json['role'];
    status = json['status'];
    updatedAt = json['updated_at'];
    username = json['username'];
    verifiedAt = json['verified_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['created_at'] = createdAt;
    data['email'] = email;
    data['name'] = name;
    data['photo'] = photo;
    data['role'] = role;
    data['status'] = status;
    data['updated_at'] = updatedAt;
    data['username'] = username;
    data['verified_at'] = verifiedAt;
    return data;
  }
}

class PostForgotPasswordAdminRoleAdministratorRequest {
  String? email;

  PostForgotPasswordAdminRoleAdministratorRequest({this.email});

  PostForgotPasswordAdminRoleAdministratorRequest.fromJson(
      Map<String, dynamic> json) {
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    return data;
  }
}

class PostForgotPasswordAdminRoleAdministratorResponse {
  int? code;
  DataPostForgotPasswordAdminRoleAdministratorResponse? data;
  String? message;
  String? status;

  PostForgotPasswordAdminRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  PostForgotPasswordAdminRoleAdministratorResponse.fromJson(
      Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPostForgotPasswordAdminRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataPostForgotPasswordAdminRoleAdministratorResponse {
  String? email;
  String? name;

  DataPostForgotPasswordAdminRoleAdministratorResponse({this.email, this.name});

  DataPostForgotPasswordAdminRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
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

class GetAdminProfileRoleAdministratorResponse {
  int? code;
  DataGetAdminProfileRoleAdministratorResponse? data;
  String? message;
  String? status;

  GetAdminProfileRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  GetAdminProfileRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataGetAdminProfileRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataGetAdminProfileRoleAdministratorResponse {
  String? createdAt;
  String? email;
  int? id;
  String? name;
  String? photo;
  String? role;
  bool? status;
  String? updatedAt;
  String? username;
  String? verifiedAt;

  DataGetAdminProfileRoleAdministratorResponse(
      {this.createdAt,
      this.email,
      this.id,
      this.name,
      this.photo,
      this.role,
      this.status,
      this.updatedAt,
      this.username,
      this.verifiedAt});

  DataGetAdminProfileRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    email = json['email'];
    id = json['id'];
    name = json['name'];
    photo = json['photo'];
    role = json['role'];
    status = json['status'];
    updatedAt = json['updated_at'];
    username = json['username'];
    verifiedAt = json['verified_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['created_at'] = createdAt;
    data['email'] = email;
    data['id'] = id;
    data['name'] = name;
    data['photo'] = photo;
    data['role'] = role;
    data['status'] = status;
    data['updated_at'] = updatedAt;
    data['username'] = username;
    data['verified_at'] = verifiedAt;
    return data;
  }
}

class PutUpdateProfileRoleAdministratorRequest {
  String? email;
  String? name;
  String? username;

  PutUpdateProfileRoleAdministratorRequest(
      {this.email, this.name, this.username});

  PutUpdateProfileRoleAdministratorRequest.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    name = json['name'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['name'] = name;
    data['username'] = username;
    return data;
  }
}

class PutUpdateProfileRoleAdministratorResponse {
  int? code;
  DataPutUpdateProfileRoleAdministratorResponse? data;
  String? message;
  String? status;

  PutUpdateProfileRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  PutUpdateProfileRoleAdministratorResponse.fromJson(
      Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPutUpdateProfileRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataPutUpdateProfileRoleAdministratorResponse {
  String? createdAt;
  String? email;
  int? id;
  String? name;
  String? photo;
  String? role;
  bool? status;
  String? updatedAt;
  String? username;
  String? verifiedAt;

  DataPutUpdateProfileRoleAdministratorResponse(
      {this.createdAt,
      this.email,
      this.id,
      this.name,
      this.photo,
      this.role,
      this.status,
      this.updatedAt,
      this.username,
      this.verifiedAt});

  DataPutUpdateProfileRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    email = json['email'];
    id = json['id'];
    name = json['name'];
    photo = json['photo'];
    role = json['role'];
    status = json['status'];
    updatedAt = json['updated_at'];
    username = json['username'];
    verifiedAt = json['verified_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['created_at'] = createdAt;
    data['email'] = email;
    data['id'] = id;
    data['name'] = name;
    data['photo'] = photo;
    data['role'] = role;
    data['status'] = status;
    data['updated_at'] = updatedAt;
    data['username'] = username;
    data['verified_at'] = verifiedAt;
    return data;
  }
}

class PutChangePasswordRoleAdministratorRequest {
  String? confirmPassword;
  String? newPassword;

  PutChangePasswordRoleAdministratorRequest(
      {this.confirmPassword, this.newPassword});

  PutChangePasswordRoleAdministratorRequest.fromJson(
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

class PutChangePasswordRoleAdministratorResponse {
  int? code;
  DataPutChangePasswordRoleAdministratorResponse? data;
  String? message;
  String? status;

  PutChangePasswordRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  PutChangePasswordRoleAdministratorResponse.fromJson(
      Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPutChangePasswordRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataPutChangePasswordRoleAdministratorResponse {
  String? email;
  String? name;

  DataPutChangePasswordRoleAdministratorResponse({this.email, this.name});

  DataPutChangePasswordRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
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

class PostResetPasswordAdminRoleAdministratorRequest {
  String? confirmPassword;
  String? newPassword;

  PostResetPasswordAdminRoleAdministratorRequest(
      {this.confirmPassword, this.newPassword});

  PostResetPasswordAdminRoleAdministratorRequest.fromJson(
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

class PostResetPasswordAdminRoleAdministratorResponse {
  int? code;
  DataPostResetPasswordAdminRoleAdministratorResponse? data;
  String? message;
  String? status;

  PostResetPasswordAdminRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  PostResetPasswordAdminRoleAdministratorResponse.fromJson(
      Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPostResetPasswordAdminRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataPostResetPasswordAdminRoleAdministratorResponse {
  String? email;
  String? name;

  DataPostResetPasswordAdminRoleAdministratorResponse({this.email, this.name});

  DataPostResetPasswordAdminRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
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

class GetVerifyAdminRoleAdministratorResponse {
  int? code;
  DataGetVerifyAdminRoleAdministratorResponse? data;
  String? message;
  String? status;

  GetVerifyAdminRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  GetVerifyAdminRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataGetVerifyAdminRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataGetVerifyAdminRoleAdministratorResponse {
  String? email;
  String? name;
  String? verifiedAt;

  DataGetVerifyAdminRoleAdministratorResponse({this.email, this.name, this.verifiedAt});

  DataGetVerifyAdminRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
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

