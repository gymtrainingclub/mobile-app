class GetAllInstructorRequest {
  String? query;
  String? status;
  String? start;
  String? end;

  GetAllInstructorRequest({this.query, this.status, this.start, this.end});

  GetAllInstructorRequest.fromJson(Map<String, dynamic> json) {
    query = json['query'];
    status = json['status'];
    start = json['start'];
    end = json['end'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['query'] = query;
    data['status'] = status;
    data['start'] = start;
    data['end'] = end;
    return data;
  }
}

class GetAllInstructorResponse {
  int? code;
  List<DataGetAllInstructorResponse>? data;
  String? message;
  String? status;

  GetAllInstructorResponse({this.code, this.data, this.message, this.status});

  GetAllInstructorResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['data'] != null) {
      data = <DataGetAllInstructorResponse>[];
      json['data'].forEach((v) {
        data!.add(DataGetAllInstructorResponse.fromJson(v));
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

class DataGetAllInstructorResponse {
  int? weight;
  String? address;
  String? birthOfDate;
  String? city;
  String? createdAt;
  String? email;
  String? gender;
  String? handphone;
  int? height;
  int? id;
  String? name;
  String? nationality;
  String? photo;
  String? province;
  bool? status;
  String? updatedAt;

  DataGetAllInstructorResponse(
      {this.weight,
      this.address,
      this.birthOfDate,
      this.city,
      this.createdAt,
      this.email,
      this.gender,
      this.handphone,
      this.height,
      this.id,
      this.name,
      this.nationality,
      this.photo,
      this.province,
      this.status,
      this.updatedAt});

  DataGetAllInstructorResponse.fromJson(Map<String, dynamic> json) {
    weight = json['Weight'];
    address = json['address'];
    birthOfDate = json['birth_of_date'];
    city = json['city'];
    createdAt = json['created_at'];
    email = json['email'];
    gender = json['gender'];
    handphone = json['handphone'];
    height = json['height'];
    id = json['id'];
    name = json['name'];
    nationality = json['nationality'];
    photo = json['photo'];
    province = json['province'];
    status = json['status'];
    updatedAt = json['updated_at'];
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
    data['id'] = id;
    data['name'] = name;
    data['nationality'] = nationality;
    data['photo'] = photo;
    data['province'] = province;
    data['status'] = status;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class PostCreateInstructorRoleAdministratorRequest {
  String? city;
  String? email;
  String? gender;
  String? handphone;
  String? name;

  PostCreateInstructorRoleAdministratorRequest(
      {this.city, this.email, this.gender, this.handphone, this.name});

  PostCreateInstructorRoleAdministratorRequest.fromJson(
      Map<String, dynamic> json) {
    city = json['city'];
    email = json['email'];
    gender = json['gender'];
    handphone = json['handphone'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['city'] = city;
    data['email'] = email;
    data['gender'] = gender;
    data['handphone'] = handphone;
    data['name'] = name;
    return data;
  }
}

class PostCreateInstructorRoleAdministratorResponse {
  int? code;
  DataPostCreateInstructorRoleAdministratorResponse? data;
  String? message;
  String? status;

  PostCreateInstructorRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  PostCreateInstructorRoleAdministratorResponse.fromJson(
      Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPostCreateInstructorRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataPostCreateInstructorRoleAdministratorResponse {
  int? weight;
  String? address;
  String? birthOfDate;
  String? city;
  String? createdAt;
  String? email;
  String? gender;
  String? handphone;
  int? height;
  int? id;
  String? name;
  String? nationality;
  String? photo;
  String? province;
  bool? status;
  String? updatedAt;

  DataPostCreateInstructorRoleAdministratorResponse(
      {this.weight,
      this.address,
      this.birthOfDate,
      this.city,
      this.createdAt,
      this.email,
      this.gender,
      this.handphone,
      this.height,
      this.id,
      this.name,
      this.nationality,
      this.photo,
      this.province,
      this.status,
      this.updatedAt});

  DataPostCreateInstructorRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    weight = json['Weight'];
    address = json['address'];
    birthOfDate = json['birth_of_date'];
    city = json['city'];
    createdAt = json['created_at'];
    email = json['email'];
    gender = json['gender'];
    handphone = json['handphone'];
    height = json['height'];
    id = json['id'];
    name = json['name'];
    nationality = json['nationality'];
    photo = json['photo'];
    province = json['province'];
    status = json['status'];
    updatedAt = json['updated_at'];
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
    data['id'] = id;
    data['name'] = name;
    data['nationality'] = nationality;
    data['photo'] = photo;
    data['province'] = province;
    data['status'] = status;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class GetInstructorByIDResponse {
  int? code;
  DataGetInstructorByIDResponse? data;
  String? message;
  String? status;

  GetInstructorByIDResponse({this.code, this.data, this.message, this.status});

  GetInstructorByIDResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataGetInstructorByIDResponse.fromJson(json['data']) : null;
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

class DataGetInstructorByIDResponse {
  int? weight;
  String? address;
  String? birthOfDate;
  String? city;
  String? createdAt;
  String? email;
  String? gender;
  String? handphone;
  int? height;
  int? id;
  String? name;
  String? nationality;
  String? photo;
  String? province;
  bool? status;
  String? updatedAt;

  DataGetInstructorByIDResponse(
      {this.weight,
      this.address,
      this.birthOfDate,
      this.city,
      this.createdAt,
      this.email,
      this.gender,
      this.handphone,
      this.height,
      this.id,
      this.name,
      this.nationality,
      this.photo,
      this.province,
      this.status,
      this.updatedAt});

  DataGetInstructorByIDResponse.fromJson(Map<String, dynamic> json) {
    weight = json['Weight'];
    address = json['address'];
    birthOfDate = json['birth_of_date'];
    city = json['city'];
    createdAt = json['created_at'];
    email = json['email'];
    gender = json['gender'];
    handphone = json['handphone'];
    height = json['height'];
    id = json['id'];
    name = json['name'];
    nationality = json['nationality'];
    photo = json['photo'];
    province = json['province'];
    status = json['status'];
    updatedAt = json['updated_at'];
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
    data['id'] = id;
    data['name'] = name;
    data['nationality'] = nationality;
    data['photo'] = photo;
    data['province'] = province;
    data['status'] = status;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class PutUpdateInstructorRoleAdministratorRequest {
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
  bool? status;
  int? weight;

  PutUpdateInstructorRoleAdministratorRequest(
      {this.address,
      this.birthOfDate,
      this.city,
      this.email,
      this.gender,
      this.handphone,
      this.height,
      this.name,
      this.nationality,
      this.province,
      this.status,
      this.weight});

  PutUpdateInstructorRoleAdministratorRequest.fromJson(
      Map<String, dynamic> json) {
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
    status = json['status'];
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
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
    data['status'] = status;
    data['weight'] = weight;
    return data;
  }
}

class PutUpdateInstructorRoleAdministratorResponse {
  int? code;
  DataPutUpdateInstructorRoleAdministratorResponse? data;
  String? message;
  String? status;

  PutUpdateInstructorRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  PutUpdateInstructorRoleAdministratorResponse.fromJson(
      Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataPutUpdateInstructorRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataPutUpdateInstructorRoleAdministratorResponse {
  int? weight;
  String? address;
  String? birthOfDate;
  String? city;
  String? createdAt;
  String? email;
  String? gender;
  String? handphone;
  int? height;
  int? id;
  String? name;
  String? nationality;
  String? photo;
  String? province;
  bool? status;
  String? updatedAt;

  DataPutUpdateInstructorRoleAdministratorResponse(
      {this.weight,
      this.address,
      this.birthOfDate,
      this.city,
      this.createdAt,
      this.email,
      this.gender,
      this.handphone,
      this.height,
      this.id,
      this.name,
      this.nationality,
      this.photo,
      this.province,
      this.status,
      this.updatedAt});

  DataPutUpdateInstructorRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    weight = json['Weight'];
    address = json['address'];
    birthOfDate = json['birth_of_date'];
    city = json['city'];
    createdAt = json['created_at'];
    email = json['email'];
    gender = json['gender'];
    handphone = json['handphone'];
    height = json['height'];
    id = json['id'];
    name = json['name'];
    nationality = json['nationality'];
    photo = json['photo'];
    province = json['province'];
    status = json['status'];
    updatedAt = json['updated_at'];
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
    data['id'] = id;
    data['name'] = name;
    data['nationality'] = nationality;
    data['photo'] = photo;
    data['province'] = province;
    data['status'] = status;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class DeleteInstructorRoleAdministratorResponse {
  int? code;
  DataDeleteInstructorRoleAdministratorResponse? data;
  String? message;
  String? status;

  DeleteInstructorRoleAdministratorResponse(
      {this.code, this.data, this.message, this.status});

  DeleteInstructorRoleAdministratorResponse.fromJson(
      Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? DataDeleteInstructorRoleAdministratorResponse.fromJson(json['data']) : null;
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

class DataDeleteInstructorRoleAdministratorResponse {
  int? weight;
  String? address;
  String? birthOfDate;
  String? city;
  String? createdAt;
  String? email;
  String? gender;
  String? handphone;
  int? height;
  int? id;
  String? name;
  String? nationality;
  String? photo;
  String? province;
  bool? status;
  String? updatedAt;

  DataDeleteInstructorRoleAdministratorResponse(
      {this.weight,
      this.address,
      this.birthOfDate,
      this.city,
      this.createdAt,
      this.email,
      this.gender,
      this.handphone,
      this.height,
      this.id,
      this.name,
      this.nationality,
      this.photo,
      this.province,
      this.status,
      this.updatedAt});

  DataDeleteInstructorRoleAdministratorResponse.fromJson(Map<String, dynamic> json) {
    weight = json['Weight'];
    address = json['address'];
    birthOfDate = json['birth_of_date'];
    city = json['city'];
    createdAt = json['created_at'];
    email = json['email'];
    gender = json['gender'];
    handphone = json['handphone'];
    height = json['height'];
    id = json['id'];
    name = json['name'];
    nationality = json['nationality'];
    photo = json['photo'];
    province = json['province'];
    status = json['status'];
    updatedAt = json['updated_at'];
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
    data['id'] = id;
    data['name'] = name;
    data['nationality'] = nationality;
    data['photo'] = photo;
    data['province'] = province;
    data['status'] = status;
    data['updated_at'] = updatedAt;
    return data;
  }
}

