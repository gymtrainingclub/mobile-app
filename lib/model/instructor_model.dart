class InstructorGetResponse {
  String? status;
  int? code;
  String? message;
  List<Data>? data;

  InstructorGetResponse({this.status, this.code, this.message, this.data});

  InstructorGetResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['code'] = code;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? gender;
  String? birthOfDate;
  int? weight;
  int? height;
  String? handphone;
  String? email;
  int? status;
  String? address;
  String? city;
  String? province;
  String? nationality;
  String? photo;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.name,
      this.gender,
      this.birthOfDate,
      this.weight,
      this.height,
      this.handphone,
      this.email,
      this.status,
      this.address,
      this.city,
      this.province,
      this.nationality,
      this.photo,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    gender = json['gender'];
    birthOfDate = json['birth_of_date'];
    weight = json['weight'];
    height = json['height'];
    handphone = json['handphone'];
    email = json['email'];
    status = json['status'];
    address = json['address'];
    city = json['city'];
    province = json['province'];
    nationality = json['nationality'];
    photo = json['photo'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['gender'] = gender;
    data['birth_of_date'] = birthOfDate;
    data['weight'] = weight;
    data['height'] = height;
    data['handphone'] = handphone;
    data['email'] = email;
    data['status'] = status;
    data['address'] = address;
    data['city'] = city;
    data['province'] = province;
    data['nationality'] = nationality;
    data['photo'] = photo;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class InstructorPostRequest {
  String? name;
  String? gender;
  String? birthOfDate;
  int? weight;
  int? height;
  String? handphone;
  String? email;
  int? status;
  String? address;
  String? city;
  String? province;
  String? nationality;
  String? photo;

  InstructorPostRequest(
      {this.name,
      this.gender,
      this.birthOfDate,
      this.weight,
      this.height,
      this.handphone,
      this.email,
      this.status,
      this.address,
      this.city,
      this.province,
      this.nationality,
      this.photo});

  InstructorPostRequest.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    gender = json['gender'];
    birthOfDate = json['birth_of_date'];
    weight = json['weight'];
    height = json['height'];
    handphone = json['handphone'];
    email = json['email'];
    status = json['status'];
    address = json['address'];
    city = json['city'];
    province = json['province'];
    nationality = json['nationality'];
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['gender'] = gender;
    data['birth_of_date'] = birthOfDate;
    data['weight'] = weight;
    data['height'] = height;
    data['handphone'] = handphone;
    data['email'] = email;
    data['status'] = status;
    data['address'] = address;
    data['city'] = city;
    data['province'] = province;
    data['nationality'] = nationality;
    data['photo'] = photo;
    return data;
  }
}

class InstructorPostResponse {
  String? status;
  int? code;
  String? message;
  Data? data;

  InstructorPostResponse({this.status, this.code, this.message, this.data});

  InstructorPostResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
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

class Data2 {
  int? id;
  String? name;
  String? gender;
  String? birthOfDate;
  int? weight;
  int? height;
  String? handphone;
  String? email;
  int? status;
  String? address;
  String? city;
  String? province;
  String? nationality;
  String? photo;
  String? createdAt;
  String? updatedAt;

  Data2(
      {this.id,
      this.name,
      this.gender,
      this.birthOfDate,
      this.weight,
      this.height,
      this.handphone,
      this.email,
      this.status,
      this.address,
      this.city,
      this.province,
      this.nationality,
      this.photo,
      this.createdAt,
      this.updatedAt});

  Data2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    gender = json['gender'];
    birthOfDate = json['birth_of_date'];
    weight = json['weight'];
    height = json['height'];
    handphone = json['handphone'];
    email = json['email'];
    status = json['status'];
    address = json['address'];
    city = json['city'];
    province = json['province'];
    nationality = json['nationality'];
    photo = json['photo'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['gender'] = gender;
    data['birth_of_date'] = birthOfDate;
    data['weight'] = weight;
    data['height'] = height;
    data['handphone'] = handphone;
    data['email'] = email;
    data['status'] = status;
    data['address'] = address;
    data['city'] = city;
    data['province'] = province;
    data['nationality'] = nationality;
    data['photo'] = photo;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class InstructorGetByIdResponse {
  String? status;
  int? code;
  String? message;
  Data? data;

  InstructorGetByIdResponse({this.status, this.code, this.message, this.data});

  InstructorGetByIdResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
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

class Data3 {
  int? id;
  String? name;
  String? gender;
  String? birthOfDate;
  int? weight;
  int? height;
  String? handphone;
  String? email;
  int? status;
  String? address;
  String? city;
  String? province;
  String? nationality;
  String? photo;
  String? createdAt;
  String? updatedAt;

  Data3(
      {this.id,
      this.name,
      this.gender,
      this.birthOfDate,
      this.weight,
      this.height,
      this.handphone,
      this.email,
      this.status,
      this.address,
      this.city,
      this.province,
      this.nationality,
      this.photo,
      this.createdAt,
      this.updatedAt});

  Data3.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    gender = json['gender'];
    birthOfDate = json['birth_of_date'];
    weight = json['weight'];
    height = json['height'];
    handphone = json['handphone'];
    email = json['email'];
    status = json['status'];
    address = json['address'];
    city = json['city'];
    province = json['province'];
    nationality = json['nationality'];
    photo = json['photo'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['gender'] = gender;
    data['birth_of_date'] = birthOfDate;
    data['weight'] = weight;
    data['height'] = height;
    data['handphone'] = handphone;
    data['email'] = email;
    data['status'] = status;
    data['address'] = address;
    data['city'] = city;
    data['province'] = province;
    data['nationality'] = nationality;
    data['photo'] = photo;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class InstructorPutByIdRequest {
  String? name;
  String? gender;
  String? birthOfDate;
  int? weight;
  int? height;
  String? handphone;
  String? email;
  int? status;
  String? address;
  String? city;
  String? province;
  String? nationality;
  String? photo;

  InstructorPutByIdRequest(
      {this.name,
      this.gender,
      this.birthOfDate,
      this.weight,
      this.height,
      this.handphone,
      this.email,
      this.status,
      this.address,
      this.city,
      this.province,
      this.nationality,
      this.photo});

  InstructorPutByIdRequest.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    gender = json['gender'];
    birthOfDate = json['birth_of_date'];
    weight = json['weight'];
    height = json['height'];
    handphone = json['handphone'];
    email = json['email'];
    status = json['status'];
    address = json['address'];
    city = json['city'];
    province = json['province'];
    nationality = json['nationality'];
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['gender'] = gender;
    data['birth_of_date'] = birthOfDate;
    data['weight'] = weight;
    data['height'] = height;
    data['handphone'] = handphone;
    data['email'] = email;
    data['status'] = status;
    data['address'] = address;
    data['city'] = city;
    data['province'] = province;
    data['nationality'] = nationality;
    data['photo'] = photo;
    return data;
  }
}

class InstructorPutByIdResponse {
  String? status;
  int? code;
  String? message;
  Data? data;

  InstructorPutByIdResponse({this.status, this.code, this.message, this.data});

  InstructorPutByIdResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
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

class Data4 {
  int? id;
  String? name;
  String? gender;
  String? birthOfDate;
  int? weight;
  int? height;
  String? handphone;
  String? email;
  int? status;
  String? address;
  String? city;
  String? province;
  String? nationality;
  String? photo;
  String? createdAt;
  String? updatedAt;

  Data4(
      {this.id,
      this.name,
      this.gender,
      this.birthOfDate,
      this.weight,
      this.height,
      this.handphone,
      this.email,
      this.status,
      this.address,
      this.city,
      this.province,
      this.nationality,
      this.photo,
      this.createdAt,
      this.updatedAt});

  Data4.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    gender = json['gender'];
    birthOfDate = json['birth_of_date'];
    weight = json['weight'];
    height = json['height'];
    handphone = json['handphone'];
    email = json['email'];
    status = json['status'];
    address = json['address'];
    city = json['city'];
    province = json['province'];
    nationality = json['nationality'];
    photo = json['photo'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['gender'] = gender;
    data['birth_of_date'] = birthOfDate;
    data['weight'] = weight;
    data['height'] = height;
    data['handphone'] = handphone;
    data['email'] = email;
    data['status'] = status;
    data['address'] = address;
    data['city'] = city;
    data['province'] = province;
    data['nationality'] = nationality;
    data['photo'] = photo;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class InstructorDeleteByIdResponse {
  String? status;
  int? code;
  String? message;
  Data? data;

  InstructorDeleteByIdResponse(
      {this.status, this.code, this.message, this.data});

  InstructorDeleteByIdResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
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

class Data5 {
  int? id;
  String? name;
  String? gender;
  String? birthOfDate;
  int? weight;
  int? height;
  String? handphone;
  String? email;
  int? status;
  String? address;
  String? city;
  String? province;
  String? nationality;
  String? photo;
  String? createdAt;
  String? updatedAt;

  Data5(
      {this.id,
      this.name,
      this.gender,
      this.birthOfDate,
      this.weight,
      this.height,
      this.handphone,
      this.email,
      this.status,
      this.address,
      this.city,
      this.province,
      this.nationality,
      this.photo,
      this.createdAt,
      this.updatedAt});

  Data5.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    gender = json['gender'];
    birthOfDate = json['birth_of_date'];
    weight = json['weight'];
    height = json['height'];
    handphone = json['handphone'];
    email = json['email'];
    status = json['status'];
    address = json['address'];
    city = json['city'];
    province = json['province'];
    nationality = json['nationality'];
    photo = json['photo'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['gender'] = gender;
    data['birth_of_date'] = birthOfDate;
    data['weight'] = weight;
    data['height'] = height;
    data['handphone'] = handphone;
    data['email'] = email;
    data['status'] = status;
    data['address'] = address;
    data['city'] = city;
    data['province'] = province;
    data['nationality'] = nationality;
    data['photo'] = photo;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
