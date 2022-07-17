class GetAllAdministratorsRoleSuperAdminRequest {
  String? query;
  String? dateStart;
  String? dateEnd;

  GetAllAdministratorsRoleSuperAdminRequest(
      {this.query, this.dateStart, this.dateEnd});

  GetAllAdministratorsRoleSuperAdminRequest.fromJson(Map<String, dynamic> json) {
    query = json['query'];
    dateStart = json['date_start'];
    dateEnd = json['date_end'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['query'] = query;
    data['date_start'] = dateStart;
    data['date_end'] = dateEnd;
    return data;
  }
}

class GetAllAdministratorsRoleSuperAdminResponse {
  int? code;
  List<DataGetAllAdministratorsRoleSuperAdminResponse>? data;
  String? message;
  String? status;

  GetAllAdministratorsRoleSuperAdminResponse(
      {this.code, this.data, this.message, this.status});

  GetAllAdministratorsRoleSuperAdminResponse.fromJson(
      Map<String, dynamic> json) {
    code = json['code'];
    if (json['data'] != null) {
      data = <DataGetAllAdministratorsRoleSuperAdminResponse>[];
      json['data'].forEach((v) {
        data!.add(DataGetAllAdministratorsRoleSuperAdminResponse.fromJson(v));
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

class DataGetAllAdministratorsRoleSuperAdminResponse {
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

  DataGetAllAdministratorsRoleSuperAdminResponse(
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

  DataGetAllAdministratorsRoleSuperAdminResponse.fromJson(Map<String, dynamic> json) {
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

class PostUpdateAdministratorRoleSuperAdminRequest {
  String? email;
  String? name;
  String? password;
  int? role;
  String? username;

  PostUpdateAdministratorRoleSuperAdminRequest(
      {this.email, this.name, this.password, this.role, this.username});

  PostUpdateAdministratorRoleSuperAdminRequest.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    name = json['name'];
    password = json['password'];
    role = json['role'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['name'] = name;
    data['password'] = password;
    data['role'] = role;
    data['username'] = username;
    return data;
  }
}

class PostUpdateAdministratorRoleSuperAdminResponse {
  int? code;
  DataGetAllAdministratorsRoleSuperAdminResponse? data;
  String? message;
  String? status;

  PostUpdateAdministratorRoleSuperAdminResponse(
      {this.code, this.data, this.message, this.status});

  PostUpdateAdministratorRoleSuperAdminResponse.fromJson(
      Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataGetAllAdministratorsRoleSuperAdminResponse.fromJson(json['data']) : null;
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

class DataPostUpdateAdministratorRoleSuperAdminResponse {
  bool? active;
  String? createdAt;
  String? email;
  String? name;
  String? role;
  String? username;

  DataPostUpdateAdministratorRoleSuperAdminResponse(
      {this.active,
      this.createdAt,
      this.email,
      this.name,
      this.role,
      this.username});

  DataPostUpdateAdministratorRoleSuperAdminResponse.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    createdAt = json['created_at'];
    email = json['email'];
    name = json['name'];
    role = json['role'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['active'] = active;
    data['created_at'] = createdAt;
    data['email'] = email;
    data['name'] = name;
    data['role'] = role;
    data['username'] = username;
    return data;
  }
}

class GetAdministratorByIDRoleSuperAdminResponse {
  int? code;
  DataGetAdministratorByIDRoleSuperAdminResponse? data;
  String? message;
  String? status;

  GetAdministratorByIDRoleSuperAdminResponse(
      {this.code, this.data, this.message, this.status});

  GetAdministratorByIDRoleSuperAdminResponse.fromJson(
      Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataGetAdministratorByIDRoleSuperAdminResponse.fromJson(json['data']) : null;
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

class DataGetAdministratorByIDRoleSuperAdminResponse {
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

  DataGetAdministratorByIDRoleSuperAdminResponse(
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

  DataGetAdministratorByIDRoleSuperAdminResponse.fromJson(Map<String, dynamic> json) {
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

class PutUpdateAdministratorRoleSuperAdminRequest {
  String? email;
  bool? isActive;
  String? name;
  int? role;
  String? username;

  PutUpdateAdministratorRoleSuperAdminRequest(
      {this.email, this.isActive, this.name, this.role, this.username});

  PutUpdateAdministratorRoleSuperAdminRequest.fromJson(
      Map<String, dynamic> json) {
    email = json['email'];
    isActive = json['is_active'];
    name = json['name'];
    role = json['role'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['is_active'] = isActive;
    data['name'] = name;
    data['role'] = role;
    data['username'] = username;
    return data;
  }
}

class PutUpdateAdministratorRoleSuperAdminResponse {
  int? code;
  DataPutUpdateAdministratorRoleSuperAdminResponse? data;
  String? message;
  String? status;

  PutUpdateAdministratorRoleSuperAdminResponse(
      {this.code, this.data, this.message, this.status});

  PutUpdateAdministratorRoleSuperAdminResponse.fromJson(
      Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPutUpdateAdministratorRoleSuperAdminResponse.fromJson(json['data']) : null;
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

class DataPutUpdateAdministratorRoleSuperAdminResponse {
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

  DataPutUpdateAdministratorRoleSuperAdminResponse(
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

  DataPutUpdateAdministratorRoleSuperAdminResponse.fromJson(Map<String, dynamic> json) {
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

class DeleteAdministratorRoleSuperAdminResponse {
  int? code;
  DataDeleteAdministratorRoleSuperAdminResponse? data;
  String? message;
  String? status;

  DeleteAdministratorRoleSuperAdminResponse(
      {this.code, this.data, this.message, this.status});

  DeleteAdministratorRoleSuperAdminResponse.fromJson(
      Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataDeleteAdministratorRoleSuperAdminResponse.fromJson(json['data']) : null;
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

class DataDeleteAdministratorRoleSuperAdminResponse {
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

  DataDeleteAdministratorRoleSuperAdminResponse(
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

  DataDeleteAdministratorRoleSuperAdminResponse.fromJson(Map<String, dynamic> json) {
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

class PutUpdatePasswordRoleSuperAdminRequest {
  String? confirmPassword;
  String? newPassword;

  PutUpdatePasswordRoleSuperAdminRequest(
      {this.confirmPassword, this.newPassword});

  PutUpdatePasswordRoleSuperAdminRequest.fromJson(Map<String, dynamic> json) {
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

class PutUpdatePasswordRoleSuperAdminResponse {
  int? code;
  DataPutUpdatePasswordRoleSuperAdminResponse? data;
  String? message;
  String? status;

  PutUpdatePasswordRoleSuperAdminResponse(
      {this.code, this.data, this.message, this.status});

  PutUpdatePasswordRoleSuperAdminResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPutUpdatePasswordRoleSuperAdminResponse.fromJson(json['data']) : null;
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

class DataPutUpdatePasswordRoleSuperAdminResponse {
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

  DataPutUpdatePasswordRoleSuperAdminResponse(
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

  DataPutUpdatePasswordRoleSuperAdminResponse.fromJson(Map<String, dynamic> json) {
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









